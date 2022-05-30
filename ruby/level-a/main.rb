class Test
  def fibo(n)
    return 1 if n == 1 || n == 2
    fibo(n - 1) + fibo(n - 2)
  end
end
