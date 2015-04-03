class Builder
  class Name
    def initialize(builder, name)
      @builder = builder
      @name = name
    end

    attr_reader :name

    def ==(other)
      @name == other.name
    end

    def [](*args)
      raise "zero arguments is not available" if args.size == 0
      name = self
      args.each do |a|
        name = @builder.apply name, a
      end
      name
    end
  end


  def initialize(&blk)
    @env = [out, succ, w, input]
    @code = ""
    @toplevel = true
    @program = false
    @uuid = 0
    instance_eval &blk
  end

  attr_accessor :env
  attr_accessor :code

  def out; Name.new self, :out end
  def succ; Name.new self, :succ end
  def w; Name.new self, :w end
  def input; Name.new self, :input end

  def new_name(name)
    @uuid += 1
    Name.new self, :"#{name}-#{@uuid}"
  end

  def abs(&blk)
    raise "toplevel only" if !@toplevel && @program
    @toplevel = true

    @code << "v" if @code != ""

    name = new_name "abs"

    raise "zero arity is not available" if blk.arity == 0
    @code << "w" * blk.arity
    args = blk.arity.times.map{|i| new_name "arg#{i}"}
    
    keep_env = @env.clone
    args.each {|a| @env.unshift a }
    blk[*args]

    @env = keep_env
    @env.unshift name
    @toplevel = false
    name
  end

  def apply(f, a)
    if !@toplevel && !@program
      @program = true
      @code << "v"
    end

    name = new_name "res"

    f_idx = @env.index(f)
    raise "#{f} is not found!" unless f_idx
    a_idx = @env.index(a)
    raise "#{a} is not found!" unless a_idx

    @code << "W" * (f_idx + 1) << "w" * (a_idx + 1)
    @env.unshift name
    name
  end
end

b = Builder.new do
  data = new_name "data"
  @env.unshift data

  id = abs do |x|
  end
  zero = abs do |x, y|
  end
  inc = abs do |n, x, y|
    x[n[x, y]]
  end

  num = ->(n) {
    n.times.reduce(zero) {|x| inc[x] }
  }

  plus = abs do |n, m|
    n[inc, m]
  end
  mul = abs do |n, m|
    n[plus[m], zero]
  end
  pow = abs do |n, m|
    m[mul[n], num[1]]
  end
  out_w = abs do |out|
    out[w]
    id[out]
  end
  out_W = abs do |out|
    n_2 = num[2]
    n_5 = plus[inc[n_2], n_2]
    n_7 = plus[n_2, n_5]
    out[mul[n_7, pow[n_2, n_5]][succ, w]]
    id[out]
  end
  out_v = abs do |out|
    n_3 = num[3]
    n_4 = inc[n_3]
    n_5 = inc[n_4]
    out[plus[pow[n_3, n_5], mul[n_3, n_4]][succ, w]]
    id[out]
  end
  enc_w = abs do |count|
    o = inc[count][out_W, out]
    out_w[o]
    id[inc[count]]
  end
  enc_W = abs do |count|
    o = inc[inc[count]][out_W, out]
    out_w[o]
    id[inc[count]]
  end
  enc_v = abs do |count|
    o = inc[inc[inc[count]]][out_W, out]
    out_w[o]
    id[inc[count]]
  end
  o = out
  4.times { o = out_w[o] }
  data[enc_v, enc_W, enc_w, inc[zero]]
  data[out_v, out_W, out_w, out]
  id[zero]
end

tbl = {
  "w" => 1,
  "W" => 2,
  "v" => 3,
}

code = "v#{b.code}"
i = 0
print "wwww#{code.chars.map{|c|i+=1;?W*(i+tbl[c])+"w"}*""}#{code}"
