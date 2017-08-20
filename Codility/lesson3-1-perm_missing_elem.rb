def solution(a)
  input_h = Hash.new
  a.each {|i| input_h[i] = 1 }
  (1..(a.size+1)).each {|i| return i unless input_h.key?(i) }
end





