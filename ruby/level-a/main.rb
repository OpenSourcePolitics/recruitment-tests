class Test

    # n = number of months
    def fibo(n)
      # begin by 0 rabbit
      pre_previous = 0
      # first month = 1 pair
      previous = 1
  
      n.times do
        # Fibonnaci sequence use the sum of the 2 previous results
        # to return the total number of pairs of rabbits
        # at n month 
        temp = pre_previous
        pre_previous = previous
        previous = temp + previous
      end
  
      return pre_previous
    end

end
