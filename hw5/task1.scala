import java.io.File
import java.io.PrintWriter
val writer = new PrintWriter(new File("mytext.txt"))
println("enter 3 lines")
for (i <- 0 to 2){
	writer.write(scala.io.StdIn.readLine() + '\n')
}
println("saved as mytext.txt")
writer.close()
