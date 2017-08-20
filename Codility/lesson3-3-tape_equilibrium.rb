def solution(a)
  return 0 if a.empty?
  return 0 if a[0].zero? && a.size == 1

  sum = 0
  a.each {|item| sum += item }

  left = 0
  p = 1
  min_diff = nil

  while p < a.size
    left += a[p-1]
    right = sum - left
    diff = (left - right).abs

    if min_diff.nil?
      min_diff = diff
    end

    min_diff = diff if min_diff > diff
    p += 1
  end

  min_diff
end

def solution_v2(a)
  rest = a.drop(1)
  rest_but_last = rest.take(rest.size - 1)
  sum_1 = a.first
  sum_2 = rest.reduce(&:+)
  min_difference = (sum_1 - sum_2).abs

  rest_but_last.each do |n|
    sum_1 += n
    sum_2 -= n
    diff = (sum_1 - sum_2).abs
    min_difference = diff if diff < min_difference
  end

  min_difference
end



