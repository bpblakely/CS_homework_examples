import scala.io
val linkRegex = "(?i)<a.+?href=\"(http.+?)\".*?>(.+?)</a>".r
val imgRegex = "<img.+?src=\"(.+?)\".*>".r

def task_c: Unit ={
  val page = io.Source.fromURL("https://about.gitlab.com/")("UTF-8").mkString
  val links = linkRegex.findAllIn(page).matchData.toList.map(_.group(1)).par

  val temp = links.map{x => if (imgRegex.findAllIn(io.Source.fromURL(x)("UTF-8").mkString).matchData.toList.map(_.group(1)).length > 2) 1 else 0 }
  var sum = temp.reduce(_+_)

  println("Total # of pages with > 2 images: "+ sum)
}
task_c