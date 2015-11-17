def non_duplicate(ar)
  ar.select{|v| ar.count(v) == 1}
end

