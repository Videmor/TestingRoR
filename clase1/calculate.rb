def add(*num)
  num.reduce(:+)
end

def subtract(*num)
  num.reduce(:-)
end

def calculate(*num, options )
  return add(*num) if options[:add]
  return subtract(*num) if options[:subtract]
end
