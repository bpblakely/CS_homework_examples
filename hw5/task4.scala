import scala.io.Source
import scala.collection.mutable.HashMap
import scala.collection.immutable.ListMap
import util.control.Breaks._
val file = Source.fromFile("story.txt")
val h = new HashMap[String,Int]
val lines = file.getLines
for(line <- lines){
	val words = line.split("\\s+")
	for(word <- words){
		val w = word.replaceAll("\\W","")
		breakable {
        		if (w == "") break
			if (h contains w) h(w) += 1
			else h.addOne( w -> 1)
		}
	}
}
val sort = ListMap(h.toSeq.sortWith(_._2 < _._2):_*)
val temp = sort.toList(sort.size -3)
val sum = h.foldLeft(0)(_+_._2)
println("Total words = "+ sum )
println("Unique words = "+h.size)
println("Third most frequent word is '"+temp._1+"' with a frequency of "+ temp._2 + " out of "+ sum+" total words")
file.close()
