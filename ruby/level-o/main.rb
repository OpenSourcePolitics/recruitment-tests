class Test
  def smallest_or_highest(arr, sort)
    # arr est un array
    case sort
    when 'min'
      return arr.min
    when 'max'
      return arr.max
    else
      return arr
    end
  end
end
