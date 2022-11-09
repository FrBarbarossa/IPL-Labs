1/F.txt", text_f)

out = File.open('Lab7/lab7_1/F.txt').readlines(chomp: true).map{|line| line.swapcase()}
File.write("Lab7/lab7_1/G.txt", out.join("\n"))
