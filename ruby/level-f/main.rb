class Test
  def rot13(string)
    string.tr('A-Za-z', 'N-ZA-Mn-za-m')
  end
end

puts rot13('OMQEMDUEQMEK')
