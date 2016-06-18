def caesar_cipher(string, shift)
  arr = string.split(//)
  arr.map! do |n|
    if n.ord.between?(65,90)
      x = n.ord + shift
      if x > 90
        z = x - 90
        x = z + 65
        n = x.chr
      else
        n = x.chr
      end
    elsif n.ord.between?(97,122)
      x = n.ord + shift
      if x > 122
        z = x - 122
        x = z + 97
        n = x.chr
      else
        n = x.chr
      end
    else
      x = n.ord
      n = x.chr
    end
  end

  string = arr.join
  puts string
endgit

caesar_cipher("Test String!", 3)
caesar_cipher("Hail Caesar", 7)
