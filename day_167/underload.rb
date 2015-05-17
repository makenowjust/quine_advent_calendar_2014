# underload.rb - A Underload interpreter written in Ruby
# (C) 2015 TSUYUSATO Kitsune <make.just.on@gmail.com>
# This program released under MIT License (see https://makenowjust.github.io/license/mit?2015)
#
# Usage: ruby underload.rb [filename]

class Underload
  def initialize
    @stack = []
  end

  attr_accessor :stack

  def parse src
    src.gsub(/(?<command>[^()]|(?<paren>\(\g<command>*\)))/).to_a
  end

  def run src
    cs = parse src
    i = 0
    while i < cs.size
      case cs[i][0]
      when ?~ # swap
        s1, s2 = pop, pop
        push s1
        push s2
      when ?: # dup
        s = pop
        push s
        push s
      when ?! # pop
        pop
      when ?* # concat
        s1, s2 = pop, pop
        push s2 + s1
      when ?a # enclose
        push "(#{pop})"
      when ?^ # eval
        s = pop
        if i + 1 == cs.size # tail call optimization
          cs = parse s
          i = 0
          next
        else
          run s
        end
      when ?S # print
        print pop
      when ?( # string
        push cs[i][1..-2]
      end
      i += 1
    end
  end

  private

  def pop
    raise "stack underflow!" if @stack.empty?
    @stack.pop
  end

  def push s
    @stack.push s
  end
end

Underload.new.run ARGF.read if __FILE__ == $0
