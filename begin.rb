begin
    puts "読み込むファイル名を入力してください："
    filename = gets.chomp
    file = File.open(filename, "r")
    puts "ファイルの内容："
    puts file.read
  rescue Errno::ENOENT
    puts "ファイルが見つかりませんでした"
  rescue IOError
    puts "ファイルを読み込めませんでした"
  ensure
    file.close if file  # ファイルが開かれている場合のみ閉じる
    puts "ファイル処理が完了しました"
  end
  