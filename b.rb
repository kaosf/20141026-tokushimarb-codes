class A
  def initialize(x)
    @x = x
  end

  def m
    @x
  end

  def method_missing(name, *args)
    p name
    p args
  end
end

a = A.new 1

a.n
#=> "n"
#   []

a.n 1, 2, nil, 'a'
#=> "n"
#   [1, 2, nil, "a"]

a.foo_method
#=> "foo_method"
#   []
