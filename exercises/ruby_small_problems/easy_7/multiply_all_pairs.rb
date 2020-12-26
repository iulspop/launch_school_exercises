def multiply_all_pairs(nums1, nums2)
  p nums1.product(nums2).map { |arr| arr.reduce(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]