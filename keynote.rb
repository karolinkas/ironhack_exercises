require 'terminfo'
p TermInfo.screen_size

height=TermInfo.screen_size[0]
width=TermInfo.screen_size[1]

# nextone = gets.chomp
# previous = gets.chomp

heigthp=height/4
widthp=width/2
counter=0

slides=["first","second","third","fourth","fifth","sixth"]

 
# printf firstslide.rjust(widthp).center(heigthp) 

def slide_play(heigthp,widthp,slides)
	(heigthp).times{puts "\r\n|\r|\n"}
	printf slides.rjust(widthp)
	(heigthp).times{puts "\r\n|\r|\n"}
	puts ("(p)revious".ljust(20)) + ("(n)ext".rjust(60).to_s)

end



slide_play(heigthp,widthp,slides[counter])

loop do 

	leftright = gets.chomp

	case leftright
		when "p"
			slide_play(heigthp,widthp,slides[counter])
		when "n"
			counter+=1
			slide_play(heigthp,widthp,slides[counter])
		end

end
		