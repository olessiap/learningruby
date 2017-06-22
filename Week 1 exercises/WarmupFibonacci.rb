def fibonacci(n)
  if n <= 1 then return n end
  fibonacci(n - 1) + fibonacci(n - 2)
end

#solution with iterate
def fibs(n)
  (1..n).map {|num| p fibonacci(num)}
end

fibs(10)


#solution with recursion
def fibs_rec(n, i = 0,  ary = [0,1])
  return ary if n == 2 #whyyyy 2

  ary << ary[i] + ary[i+1]

  i += 1
  fibs_rec(n-1,i,ary )

end

p fibs_rec(10)
