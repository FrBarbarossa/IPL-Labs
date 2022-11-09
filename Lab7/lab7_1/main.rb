
text_f = "Hello, its me, Mario \n I`m here to ANSWER some QUESTIONS ABOUT little and BIG \n letterS"
File.write("Lab7/lab7_1/F.txt", text_f)

out = File.open('Lab7/lab7_1/F.txt').readlines(chomp: true).map{|line| line.swapcase()}
File.write("Lab7/lab7_1/G.txt", out.join("\n"))