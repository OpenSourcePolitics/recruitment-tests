class Test
  def fibo(n)
    # on gère les cas 0 et 1 explicitement puis fibo(n)=fibo(n-1)+fibo(n-2)
    # NOTE - optimisation possible : fibo(n-1) va aussi calculer fibo(n-2) et pourrait donc le retourner avec une structure
    n < 2 ? n :  fibo(n-1)+fibo(n-2)
  end
end