class hoge
  attr_reader :message
  def initialize
    @message ="Hello"
  end
end

class Piyo < hoge
  def initialize
    @message= "Hi"
    super
  end
end

puts Piyo.new.message
