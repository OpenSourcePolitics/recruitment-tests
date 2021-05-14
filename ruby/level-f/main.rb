class Test
  def rot13(string)
    ciphered=""
    string.split('').each{ |c|
      if ((c.ord < 78 && c.ord >64) || (c.ord <110 && c.ord>96))
        ciphered+=(c.ord+13).chr
      elsif ((c.ord > 77 && c.ord < 91) || (c.ord > 109 && c.ord < 123))
        ciphered+=(c.ord-13).chr
      else
	ciphered+=c
      end
    }
  return ciphered
  end
end
