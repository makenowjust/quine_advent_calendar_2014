package main

import (
	"errors"
	"fmt"
	"io"
	"io/ioutil"
	"os"
)

// error
var (
	NotAChar       = errors.New("Not a char")
	NotAFunc       = errors.New("Not a function")
	StackUnderflow = errors.New("Stack underflow")
	ParseError     = errors.New("Parse error")
)

type Env struct {
	Head Value
	Next *Env
}

var NilEnv = &Env{}

func (env *Env) Push(value Value) *Env {
	return &Env{
		Head: value,
		Next: env,
	}
}

func (env *Env) At(idx int) (Value, error) {
	for env != NilEnv {
		if idx == 1 {
			return env.Head, nil
		}
		idx -= 1
		env = env.Next
	}
	return nil, StackUnderflow
}

type Dump struct {
	Env          *Env
	Program      []Runner
	ProgramCount int
	Next         *Dump
}

var NilDump = &Dump{}

type State struct {
	Program      []Runner
	ProgramCount int
	Env          *Env
	Dump         *Dump
}

type Runner interface {
	Run(state *State) error
}

type Apply struct {
	Func, Arg int
}

type Abs struct {
	ArgsLength int
	Program    []Runner
}

func (ap *Apply) Run(state *State) error {
	if f, err := state.Env.At(ap.Func); err != nil {
		return err
	} else {
		if a, err := state.Env.At(ap.Arg); err != nil {
			return err
		} else {
			return f.Apply(state, a)
		}
	}
}

func (abs *Abs) Run(state *State) error {
	state.Env = state.Env.Push(&Func{
		ArgsLength: abs.ArgsLength,
		Program:    abs.Program,
		Env:        state.Env,
	})
	return nil
}

type Value interface {
	CharCode() (rune, error)
	Apply(state *State, arg Value) error
}

type Char rune

func (ch Char) CharCode() (rune, error) {
	return rune(ch), nil
}

func (ch Char) Apply(state *State, arg Value) error {
	return NotAFunc
}

type GoFunc func(state *State, arg Value) error

func (f GoFunc) CharCode() (rune, error) {
	return 0, NotAChar
}

func (f GoFunc) Apply(state *State, arg Value) error {
	return f(state, arg)
}

type Func struct {
	ArgsLength int
	Program    []Runner
	Env        *Env
}

func (f *Func) CharCode() (rune, error) {
	return 0, NotAChar
}

func (f *Func) Apply(state *State, arg Value) error {
	if f.ArgsLength == 1 {
		dump := &Dump{
			Program:      state.Program,
			ProgramCount: state.ProgramCount,
			Env:          state.Env,
			Next:         state.Dump,
		}
		state.Program = f.Program
		state.ProgramCount = -1
		state.Env = f.Env.Push(arg)
		state.Dump = dump
	} else {
		newF := &Func{
			ArgsLength: f.ArgsLength - 1,
			Program:    f.Program,
			Env:        f.Env.Push(arg),
		}
		state.Env = state.Env.Push(newF)
	}
	return nil
}

func Succ(state *State, arg Value) error {
	if ch, err := arg.CharCode(); err != nil {
		return err
	} else {
		state.Env = state.Env.Push(Char((ch + 1) % 256))
	}
	return nil
}

func Out(state *State, arg Value) error {
	if ch, err := arg.CharCode(); err != nil {
		return err
	} else {
		fmt.Printf("%c", ch)
		state.Env = state.Env.Push(arg)
	}
	return nil
}

func In(state *State, arg Value) error {
	b := make([]byte, 1)
	if _, err := os.Stdin.Read(b); err != nil {
		if err == io.EOF {
			state.Env = state.Env.Push(arg)
		} else {
			return err
		}
	} else {
		state.Env = state.Env.Push(Char(b[0]))
	}
	return nil
}

func ParseBody(src []rune, idx int) ([]Runner, int, error) {
	l := len(src)
	body := []Runner{}
	for idx < l {
		if src[idx] == 'v' || src[idx] == 'ｖ' {
			break
		}

		funcIdx := 0
		for ; idx < l; idx += 1 {
			if src[idx] != 'W' && src[idx] != 'Ｗ' {
				break
			}
			funcIdx += 1
		}
		if funcIdx == 0 {
			fmt.Println("err4")
			return nil, 0, ParseError
		}

		argIdx := 0
		for ; idx < l; idx += 1 {
			if src[idx] != 'w' && src[idx] != 'ｗ' {
				break
			}
			argIdx += 1
		}
		if argIdx == 0 {
			fmt.Println("err3")
			return nil, 0, ParseError
		}

		body = append(body, &Apply{
			Func: funcIdx,
			Arg:  argIdx,
		})
	}
	return body, idx, nil
}

func Parse(src []rune) ([]Runner, error) {
	idx := 0
	l := len(src)
	for ; idx < l; idx += 1 {
		if src[idx] == 'w' || src[idx] == 'ｗ' {
			break
		}
	}

	program := []Runner{}
	for {
		if src[idx] != 'w' && src[idx] != 'ｗ' {
			if body, _, err := ParseBody(src, idx); err != nil {
				return nil, err
			} else {
				program = append(program, body...)
				break
			}
		}

		argsLength := 0
		for ; idx < l; idx += 1 {
			if src[idx] != 'w' && src[idx] != 'ｗ' {
				break
			}
			argsLength += 1
		}

		if argsLength == 0 {
			fmt.Println("err2")
			return nil, ParseError
		}

		if body, idx2, err := ParseBody(src, idx); err != nil {
			return nil, err
		} else {
			program = append(program, &Abs{
				ArgsLength: argsLength,
				Program:    body,
			})
			idx = idx2
		}

		if idx < l {
			if src[idx] != 'v' && src[idx] != 'ｖ' {
				fmt.Println("err1")
				return nil, ParseError
			}
			idx += 1
		} else {
			break
		}
	}

	return append(program, &Apply{1, 1}), nil
}

func Run(program []Runner) error {
	env := NilEnv.Push(GoFunc(In)).Push(Char('w')).Push(GoFunc(Succ)).Push(GoFunc(Out))
	state := &State{
		Program:      program,
		ProgramCount: 0,
		Env:          env,
		Dump:         NilDump,
	}
loop:
	for {
		for state.ProgramCount >= len(state.Program) {
			if state.Dump == NilDump {
				break loop
			}
			state.Program = state.Dump.Program
			state.ProgramCount = state.Dump.ProgramCount + 1
			state.Env = state.Dump.Env.Push(state.Env.Head)
			state.Dump = state.Dump.Next
		}

		if err := state.Program[state.ProgramCount].Run(state); err != nil {
			return err
		}
		state.ProgramCount += 1
	}
	return nil
}

func main() {
	if len(os.Args) < 2 {
		fmt.Println(`Grass interpreter

usage: grass [filename]`)
		return
	}

	if b, err := ioutil.ReadFile(os.Args[1]); err != nil {
		panic(err)
	} else {
		rs1 := []rune(string(b))
		src := []rune{}
		for _, r := range rs1 {
			if r == 'w' || r == 'W' || r == 'v' ||
				r == 'ｗ' || r == 'Ｗ' || r == 'ｖ' {
				src = append(src, r)
			}
		}
		if program, err := Parse(src); err != nil {
			panic(err)
		} else {
			if err := Run(program); err != nil {
				panic(err)
			}
		}
	}
}
