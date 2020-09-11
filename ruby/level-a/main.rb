class Test
  def fibo(n)
    return n if n < 2

    fibo(n - 1) + fibo(n - 2)
  end
end
