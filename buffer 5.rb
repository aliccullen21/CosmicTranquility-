


live_loop :fade_in do
  stop
  synth :beep, note: (chord :c3, :min).tick, amp: (line 0,0.4,steps: 32, inclusive: true).ramp.look
  sleep 0.40
end

live_loop :kick_soft, sync: :met1 do
  with_swing -0.08, 1 do
    sample :bd_tek, rate: 0.7, sustain: 0, release: 0.2, amp: 0.2
  end
  sleep 0.25
end

