class Shape{
  var color:String = "blue"
}

class Circle(color1:String, r:Double) extends Shape {
  color = color1
  def area:Double = 2*Math.PI*r
}

class Rectangle(color1:String, len:Int, wid:Int) extends Shape {
  color = color1
  def area:Double = len*wid
}

val ran = new scala.util.Random
var list:List[Shape] = List()
for(i<-1 to 40)
  {
	if(ran.nextInt(2)==0) list:+=(new Circle("red", ran.nextInt(10)))
	else list :+=(new Rectangle("green", ran.nextInt(10), ran.nextInt(10)))
  }

var area:Double = 0
list.foreach{
  case x:Circle =>
    area += x.area
  case x:Rectangle =>
    area += x.area
}
println(area)