class Test
  def smallest_or_highest(arr, sort)
    if sort=="min"
	return arr.min
    elsif sort=="max"
	return arr.max
    else
	return arr
    end
  end
end

