def find_duplicate(challenge_array)
  hash = {}
  challenge_array.each do |int|
    return int if hash[int]
    hash[int] = true
  end
  nil
end

def first_non_repeat(str)
  hash = {}
  position = 0
  while position < str.length
    hash[str[position]].nil? ? hash[str[position]] = [position] : hash[str[position]] << position
    position += 1
  end
  lowest, answer = str.length, nil
  hash.each do |char, ar|
    next if ar.length > 1
    lowest, answer = ar[0], char if ar[0] < lowest
  end
  answer
end