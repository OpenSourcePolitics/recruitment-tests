class Test
  def rot13(string)
    alphabeat = "abcdefghijklmnopqrstuvwxyz" 
    
    start_alphabeat = alphabeat + alphabeat.swapcase()
    end_alphabeat = alphabeat.chars.rotate(13).join() + alphabeat.swapcase().chars.rotate(13).join()
  
    new_string = ""
    for char in string.chars
      new_string += start_alphabeat.index(char) ? end_alphabeat[start_alphabeat.index(char)] : char
    end
    return new_string
  end
end
