class WordCounter
  def count_words(file_path)
    word_count = Hash.new(0)
  
    begin
      File.open(file_path, 'r') do |file|
        file.each_line do |line|
          words = line.downcase.scan(/\w+/)
          words.each { |word| word_count[word] += 1 }
        end
      end
      rescue Errno::ENOENT
      puts "Error: ファイル '#{file_path}' が見つかりません。"
        exit
        rescue => e
      puts "Error: ファイルの読み込み中にエラーが発生しました: #{e.message}"
      exit
    end
  
    word_count
end
  
def display_word_count(file_path)
  word_count = count_words(file_path)
  sorted_word_count = word_count.sort_by { |word, count| -count }
  
  sorted_word_count.each do |word, count|
    puts "#{word}: #{count}"
  end
  end
end