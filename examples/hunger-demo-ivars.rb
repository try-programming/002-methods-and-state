def exercise
  @hunger = 5
end

def eat
  @hunger = 0
end

def hungry?
  @hunger < 3
end

exercise
puts "I'm starving!" if hungry?
eat
puts "No thanks, I'm full" if hungry?