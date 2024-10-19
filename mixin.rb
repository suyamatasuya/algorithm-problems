class Animal
  def initialize(name)
    @name = name
  end
  
  def speak
    "#{@name}が鳴いています。"
  end
end
  
class Dog < Animal
  def bark
    "#{@name}がワンワンと鳴いています！"
  end
end
  
dog = Dog.new("ポチ")
puts dog.speak  # 親クラスから継承したメソッド
puts dog.bark   # 子クラスで追加したメソッド
  