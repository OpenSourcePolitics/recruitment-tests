def is_palindrome(string):
	string = string.lower()
	symb = [ "'" , ":" , ";" , "," , "-" , "?" , "!" , " " , "." ]
	for i in string:
		if i in symb:
			string = string.replace(i,"")
	if string == string[::-1]:
		return True
	else:
		return False
    
