def taskA(list1:List[String]) : List[String]= {
  return list1.map(s => s.reverse)
}

println(taskA(List("peg","al","bud","kelly","test")))

def taskB(list1:List[Int]) : Int= {
  return list1.foldLeft(0)(_+_)
}
println(taskB(List(10,20,30,40,50)))