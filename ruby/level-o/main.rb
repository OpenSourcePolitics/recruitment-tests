#class Test

 def smallest_or_highest(arr, sort)
    if sort == 'min'
      print arr.min
    elsif sort == 'max'
      print arr.max
    else
      print arr
    end
  end

smallest_or_highest([34,15,88,2], 'any')

#end