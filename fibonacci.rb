def fibs(number)
  sequence = []
  num1 = 0
  num2 = 1
  total = 1
  0.upto(number-1) do
    sequence << total
    total = num1 + num2
    num2 = total 
    num1 = total - num1
  end
  sequence
end

def fibs_rec(number)
  (0..1).include?(number) ? number : fibs_rec(number - 1) + fibs_rec(number - 2)
end

p fibs(10) # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
puts fibs_rec(10) # => 55

