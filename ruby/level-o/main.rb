class Test
  def smallest_or_highest(arr, arg)
    arr.send(arg.to_sym)
  rescue NoMethodError
    arr
  end
end
