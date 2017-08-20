require 'set'

def solution(arr)
  return arr[0] if arr.size == 1
  uniqs = Set.new
  arr.each {|item| uniqs.include?(item) ? uniqs.delete(item) :  uniqs.add(item) }
  uniqs.first
end

def solution_v2(arr)
  return arr[0] if arr.size == 1
  uniq = {}
  arr.each do |item|
    if uniq[item]
      uniq.delete item
    else
      uniq[item] = true
    end

  end
  uniq.first[0]
end





