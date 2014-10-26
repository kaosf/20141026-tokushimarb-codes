class A
  def initialize(x)
    @x = x
  end

  def m
    @x
  end

  def print_x
    puts @x
  end
end

a = A.new 1

puts a.m

a.n #=> Error
