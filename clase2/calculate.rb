def add(*num)
  # s = 0
  # num.length.times do |i|
  #   s += num[i]
  # end
  # s
  num.reduce(&:+)
end

def subtract(*num)
  # s = num[0]
  # (num.length - 1).times do |i|
  #   s = s - num[i + 1]
  # end
  # s
  num.reduce(&:-)
end

# < ruby 2.0
# def calculate *num
#   option = num[-1].class == Hash ? num.pop : {add: true}
#
#   return add(*num) if option[:add]
#   return subtract(*num) if option[:subtract]
# end

# >= ruby 2.0.0
def calculate(*num, add: true, subtract: false)
  return subtract(*num) if subtract
  return add(*num) if add
end
