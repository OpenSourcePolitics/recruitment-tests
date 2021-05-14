class Test
  def fibo(n)
    if n==1
      return 1
    elsif n==0
      return 0
    else
      return fibo(n-1)+fibo(n-2) 
    end
  end
end
