def rate(rate)
  case rate
  when "Steak"
    "We are eating steak"
  when "Pizza", "Margarita", "Peperoni"
    "We are eating pizza"
  else
    "Stay hungry"
  end
end

p rate("")

p rate("Steak")


def grade(grade)
  case grade
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else 
    "F"
  end
end

p grade(1)

def grade_v2(grade)
  case grade
  when 90..100 then "A" # for the same line `then` is required
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

p grade_v2(66)