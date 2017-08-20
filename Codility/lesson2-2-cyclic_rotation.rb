def solution(a, k)
  a.rotate(-k)
end


def solution_v2(a, k)
  return [] if a.empty?
  n = a.size
  return a if n == k
  rotations = k > n ? k % n : k
  left = a.slice!(n - rotations, rotations)
  left + a
end






