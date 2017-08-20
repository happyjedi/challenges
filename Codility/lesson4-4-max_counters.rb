# correctness 100% , performance 80%, total 88%,
# extreme_large (all max_counter operations) TIMEOUT ERROR,  running time: >6.00 sec., time limit: 0.66 sec.
def solution(n, a)
  counters = Array.new(n, 0)
  max = 0
  a.each do |item|
    if item >= 1 && item <= n
      counters[item - 1] += 1
      max = counters[item - 1] if counters[item - 1] > max
    elsif item == n + 1
      counters = Array.new(n, max)
    end
  end

  counters
end



def solution_v2(n, a)
  counters = Array.new(n, 0)
  current_max = 0
  counter_max = 0

  a.each do |x|
    if x <= n
      i = x - 1
      counters[i] = [counters[i], counter_max].max + 1
      current_max = [current_max, counters[i]].max
    else
      counter_max = current_max
    end
  end

  counters.map { |c| [c, counter_max].max }
end



