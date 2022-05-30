class Test
  def smallest_or_highest(arr, sort)
    if sort == 'min'
      arr.min
    elsif sort == 'max'
      arr.max
    else
      arr
    end
  end
end
