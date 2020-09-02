require 'base64'
require 'colorize'

ascii = <<END_OF_ASCII


                            .andAHHAbnn.
                         .aAHHHAAUUAAHHHAn.
                        dHP^~"        "~^THb.
                  .   .AHF                YHA.   .
                  |  .AHHb.              .dHHA.  |
                  |  HHAUAAHAbn      adAHAAUAHA  |
                  I  HF~"_____        ____ ]HHH  I
                 HHI HAPK""~^YUHb  dAHHHHHHHHHH IHH
                 HHI HHHD> .andHH  HHUUP^~YHHHH IHH
                 YUI ]HHP     "~Y  P~"     THH[ IUP
                  "  `HK                   ]HH'  "
                      THAn.  .d.aAAn.b.  .dHHP
                      ]HHHHAAUP" ~~ "YUAAHHHH[
                      `HHP^~"  .annn.  "~^YHH'
                       YHb    ~" "" "~    dHF
                        "YAb..abdHHbndbndAP"
                         THHAAb.  .adAHHF
                          "UHHHHHHHHHHU"
                            ]HHUUHHHHHH[
                          .adHHb "HHHHHbn.
                   ..andAAHHHHHHb.AHHHHHHHAAbnn..
                .ndAAHHHHHHUUHHHHHHHHHHUP^~"~^YUHHHAAbn.
                "~^YUHHP"   "~^YUHHUP"        "^YUP^"
                     ""         "~~"

END_OF_ASCII

puts ascii.colorize(:green)

puts "              [1]: Decode Base64        [2]: Encode Base64".colorize(:green)
puts ""
print "              --> ".colorize(:green)
one_or_two = gets.chomp

if(one_or_two == "1")
  print("\n")
  print "              [DECODE - B64] [INPUT]: ".colorize(:green)
  dec = gets.chomp
  puts("")
  print("              [DECODE - B64] [OUTPUT]: ".colorize(:green), Base64.decode64(dec).colorize(:red))

elsif(one_or_two == "2")
  print("\n")
  print "              [ENCODE - B64] [INPUT]: ".colorize(:green)
  enc = gets.chomp
  puts("")
  print("              [ENCODE - B64] [OUTPUT]: ".colorize(:green), Base64.encode64(enc).colorize(:red))
end
