=begin
Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]

  for each pair in list
    check which one is greater
    if -1, then its lesser than so stays the same
    if its 1, rearrange
=end

def bubble_sort(list)

  sorted_list = list.dup

  while sorted_list.each_cons(2).any? { |current_num, next_num| current_num > next_num }

    sorted_list.each_with_index do |num, index|
      next if index == list.length - 1
      if sorted_list[index] > sorted_list[index + 1]
        sorted_list[index], sorted_list[index + 1] = sorted_list[index + 1], sorted_list[index]
      end
    end

  end

  sorted_list
  
end

p bubble_sort([4,3,78,2,0,2])