def solution(num)
  return 0 if num.zero?
  max = num.to_s(2).gsub(/^0+/, '').gsub(/0+$/, '').split(/1+/).max
  max.nil? ? 0 : max.size
end