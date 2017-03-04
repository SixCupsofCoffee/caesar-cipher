def cipher(string, n)
	string.split('').map { |c|
		((65..90) === c.ord) ? (( c.ord + n - 65 ) % 26 + 65).chr : ((97..122) === c.ord) ? (( c.ord + n - 97 ) % 26 + 97).chr : c
	}.join('')
end

puts cipher("Test String!", 5)
puts cipher("Hail Caesar", 7)
