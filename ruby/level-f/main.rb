class Test
  def rot13(string)
    string.tr('A-Za-z', 'N-ZA-Mn-za-m')
  end
end

r = Test.new
puts r.rot13('Claude Elwood Shannon')
