#SOUND 3

amp_slowchoir = (ring 0, 0.2,0.4,0.6)

live_loop :slowchoirsample do
  sample :ambi_choir, rate: 0.3, amp: amp_slowchoir.tick
  sleep 1
end
sleep 3

live_loop :piano do
  sample :ambi_piano, pan: -1
  sleep 0.877
  sample :ambi_piano, pan: 1
  sleep 1
end

use_synth :hollow
with_fx :reverb, mix: 0.8 do
  
  live_loop :notea do
    play choose([:D4,:E4]), attack: 5, release: 6
    sleep 7
  end
  
  live_loop :noteb do
    play choose([:Ds4,:G4]), attack: 4, release: 5
    sleep 9
  end
  
  live_loop :notec do
    play choose([:B4, :Cs5]), attack: 3, release: 5
    sleep 12
  end
end