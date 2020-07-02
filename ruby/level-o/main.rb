class Test
  def smallest_or_highest(arr, sort)
    return arr.min if sort == "min"
    return arr.max if sort == "max"
    return arr
  end
end
