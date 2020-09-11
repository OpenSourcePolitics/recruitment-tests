class Test
  def rot13(string)
      # on TRaduit A-Z en N-M en majuscules et minuscules
      string.tr('A-Za-z', 'N-ZA-Mn-za-m')
  end
end
