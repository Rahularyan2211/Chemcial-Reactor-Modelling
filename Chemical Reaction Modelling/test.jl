abstract type Shape end

struct Rectangle <: Shape
  height::Float64
  width::Float64
end
width(r::Rectangle) = r.width
height(r::Rectangle) = r.height

struct Square <: Shape
  width::Float64
end
width(s::Square) = s.width
height(s::Square) = s.width

struct Circle <: Shape
  dia::Float64
end
dia(c::Circle) = c.dia

area(sh::Shape) = width(sh) * height(sh)
# area(c::Shape) = 3.14*dia(c)^2/4


s1 = Square(2.0)
println(area(s1))
c1 = Circle(2.0)
println(area(c1))
r1 = Rectangle(2.0,3.0)
println(area(r1))