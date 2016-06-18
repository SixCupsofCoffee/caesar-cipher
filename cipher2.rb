plus = 9
nothing = ["N", "O", "T", "H", "I", "N", "G"]
alphabet = ('A'..'Z').to_a
nothing.map { |d| alphabet.index(d) + 1 + plus }
