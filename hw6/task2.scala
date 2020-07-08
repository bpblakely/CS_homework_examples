import scala.io

val linkRegex = "(?i)<a.+?href=\"(http.+?)\".*?>(.+?)</a>".r
val imgRegex = "<img.+?src=\"(.+?)\".*>".r

def taska: Unit ={
  val URL = readLine("Enter webpage: ")
  val page = io.Source.fromURL(URL)("UTF-8").mkString

  val scriptRegex = "<script.*</script>".r

  var sum_image = 0
  sum_image += imgRegex.findAllIn(page).matchData.toList.size
  println("Image count: "+ sum_image)

  var sum_script = 0
  sum_script += scriptRegex.findAllIn(page).matchData.toList.size
  println("Script count: "+ sum_script)

}
taska


def taskb_c: Unit ={
  val page = io.Source.fromURL("https://about.gitlab.com/")("UTF-8").mkString
  val links = linkRegex.findAllIn(page).matchData.toList.map(_.group(1))


  var sum  = 0
  var moreThanTwo =0

  links.foreach { x =>
    var index_images= imgRegex.findAllIn(io.Source.fromURL(x)("UTF-8").mkString).matchData.toList.map(_.group(1))
    if(index_images.length > 2) {moreThanTwo+=1}
    sum += index_images.length
  }
  println("Total # of images on all pages x and y: "+ sum)
  println("Total # of pages with > 2 images: "+ moreThanTwo)
}
taskb_c

def taskd: Unit ={
  val page = io.Source.fromURL("https://about.gitlab.com/")("UTF-8").mkString

  //With par
  val t1 = System.currentTimeMillis()
  val links_p = (linkRegex.findAllIn(page).matchData.toList.map(_.group(1))).par
  var sum_p  = 0
  links_p.foreach { x =>
	try{
		var index_images= imgRegex.findAllIn(io.Source.fromURL(x).mkString).matchData.toList.map(_.group(1))
		sum_p += index_images.length
	} catch{
		case _: Throwable => println("There was some bad link in a gitlab project on the URL "+x)
	}
  }
  println(((System.currentTimeMillis()-t1)).toInt + " miliseconds with par\tcount= "+sum_p)

  //Without par
  val t2 = System.currentTimeMillis()
  val links = (linkRegex.findAllIn(page).matchData.toList.map(_.group(1)))
  var sum  = 0
  links.foreach { x =>
    try{
		var index_images= imgRegex.findAllIn(io.Source.fromURL(x).mkString).matchData.toList.map(_.group(1))
		sum += index_images.length
	} catch{
		case _: Throwable => println("There was some bad link in a gitlab project on the URL "+x)
	}
  }
  println(((System.currentTimeMillis()-t2)).toInt+" miliseconds without par\tcount= "+sum)
}
taskd