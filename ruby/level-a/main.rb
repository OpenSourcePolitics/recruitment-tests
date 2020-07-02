class Test
  def fibo(n)
    arr = [0, 1, 1]
    arr << arr[-1] + arr[-2] until arr.size >= n + 1
    return arr[n]
  end
end
