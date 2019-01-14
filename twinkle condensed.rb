#set amount
amount=0.5
#define for block
define :co do
  2.times do
    play :c5
    sleep amount
  end
  2.times do
    #random modifier
    play :g5, amp:rrand(1,50), pitch:rrand(1,40), release:rrand(0.1,0.5)
    sleep amount
  end
  2.times do
    play :a5
    sleep amount
  end
  play :g5
  sleep amount*2
end

define :fo do
  #synthesizer
  use_synth :dpulse
  2.times do
    play :f5
    sleep amount
  end
  2.times do
    play :e5
    sleep amount
  end
  2.times do
    play :d5
    sleep amount
  end
  play :c5
  sleep amount*2
end

define :go do
  #synthesizer
  use_synth :blade
  2.times do
    play :g5
    sleep amount
  end
  2.times do
    play :f5
    sleep amount
  end
  2.times do
    play :e5
    sleep amount
  end
  play :d5
  sleep amount*2
end

co
sleep amount/10
fo
sleep amount/10
2.times do
  go
  sleep amount/10
end
co
sleep amount/10
fo
sleep amount/10

