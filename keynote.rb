require 'terminfo'
p TermInfo.screen_size

height=TermInfo.screen_size[0]
width=TermInfo.screen_size[1]

# nextone = gets.chomp
# previous = gets.chomp

heigthp=height/4
widthp=width/2

firstslide = "Prepare for the next big thing" 
secondslide = "The iTerminal" 

# printf firstslide.rjust(widthp).center(heigthp) 

def slide_play(heigthp,firstslide,widthp)
(heigthp).times{puts "\r\n|\r|\n"}
printf firstslide.rjust(widthp)
(heigthp).times{puts "\r\n|\r|\n"}
puts ("left".ljust(20)) + ("right".rjust(60).to_s)

end



def slide_play_2(heigthp,secondslide,widthp)
(heigthp).times{puts "\r\n|\r|\n"}
printf secondslide.rjust(widthp)
(heigthp).times{puts "\r\n|\r|\n"}
end


slide_play(heigthp,firstslide,widthp)
leftright = gets.chomp

case leftright
	when "left"
		slide_play(heigthp,firstslide,widthp)
	when "right"
		slide_play_2(heigthp,secondslide,widthp)
	end
		