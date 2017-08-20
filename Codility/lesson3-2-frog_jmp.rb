def solution(x, y, d)
  return 0 if x == y
  return 1 if d > (y - x)
  (y - x) / d +  (((y - x) % d > 0) ? 1 : 0)
end





