

#SOUND 2

# Define an ambient synth
use_synth :dark_ambience

# Set the number of iterations
num_iterations = 3

# Use a counter to keep track of iterations
counter = 0

loop do
  # Play the ambient sound
  play :C3, release: 5, attack: 2, sustain: 3, amp: 0.3
  
  sleep 4
  
  # Switch to the harp synth
  use_synth :pluck
  
  # Play a soft harp note
  play :C4, release: 3, attack: 1, sustain: 3, amp: 0.5
  
  # Delay the start of the drums
  sleep 2
  
  # Play a soft beat
  sample :drum_cymbal_soft, amp: 0.2
  sample :drum_snare, amp: 0.1
  
  
  # Play the ambient sound
  play :C3, release: 5, attack: 2, sustain: 3, amp: 0.2
  sleep 4
  
  # Increment the counter
  counter += 1
  
  # To trigger the stop
  if counter >= num_iterations
    # Stop buffer and exit the loop
    stop
  end
end