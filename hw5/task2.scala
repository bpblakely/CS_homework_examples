import java.io.File
import scala.io.Source
println("Type the name of a file")
val filename= scala.io.StdIn.readLine()
val file = Source.fromFile(filename)
val lines = file.getLines
for(line <- lines){
	if ("(Prolog|prolog)".r.findAllIn(line).size > 0){
		println("The file content is not interesting")
		file.close()
		System.exit(1)
	}
	if ("(Scala|scala)".r.findAllIn(line).size > 0){
		println("The file content is interesting")
		file.close()
		System.exit(1)
	}
}
println("The file is meaningless")
file.close()