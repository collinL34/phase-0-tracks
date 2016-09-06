# make it do tricks like roll over
# make it whisper and speak
# give it a method that says how much to feed it



class Puppy

  def roll_over()
    p 'rolls over'
  end

  def whisper(n)
    n.times {puts 'woof...'}
  end

  def speak(n)
    n.times {puts 'WOOF!'}
  end

  def feed(num)
    num * 2
  end

end

Puppy.speak(3)
Puppy.whisper(5)
Puppy.feed(2)
Puppy.roll_over

pete = Puppy.new
keif = Puppy.new