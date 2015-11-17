def row_sum_odd_numbers(n)
  n ** 3
end

# def row_sum_odd_numbers(n)
#   base = n * (n - 1) + 1
#   (0..n-1).map{|i| base + 2*i}.reduce(&:+)
# end
#
# def row_sum_odd_numbers(n)
#   total_nums = (n ** 2 + n)/ 2
#   h = total_nums * 2 - 1
#   odd_array = []
#   for num in 1..h
#     if num % 2 == 1
#       odd_array << num
#     end
#   end
#
#   sum = 0
#   beg_ind = total_nums - n
#   end_ind = total_nums - 1
#   for x in odd_array[beg_ind..end_ind]
#     sum += x
#   end
#   return sum
# end
#
