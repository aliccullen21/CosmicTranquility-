
# Define an ambient synth
use_synth :dark_ambience

loop do
  # Play the ambient sound
  play :C3, release: 5, attack: 2, sustain: 3, amp: 0.3
  
  sleep 2
  
end