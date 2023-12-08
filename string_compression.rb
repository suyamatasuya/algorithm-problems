def compress_string(str)
    compressed = ''
    count = 1
  
    (1...str.length).each do |i|
      if str[i] == str[i - 1]
        count += 1
      else
        compressed += "#{str[i - 1]}#{count}"
        count = 1
      end
    end
  
    compressed += "#{str[-1]}#{count}"
    compressed.length < str.length ? compressed : str
end
  
input = gets.chomp
 puts compress_string(input)
  