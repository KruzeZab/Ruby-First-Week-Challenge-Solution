def ftoc fahrenheit
  #fahrenheit = (1.8 * celsius) + 32
  celsius = (fahrenheit - 32) * 5 / 9
  return celsius
end

def ctof celsius
  fahrenheit = (1.8 * celsius) + 32
  return fahrenheit
end
