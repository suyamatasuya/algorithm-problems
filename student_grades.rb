class Student
  attr_reader :name, :grades
  
  def initialize(name)
    @name = name
    @grades = []
  end
  
  def add_grade(grade)
    if grade >= 0 && grade <= 100
      @grades << grade
    else
      puts "Grade must be between 0 and 100."
    end
  end
  
  def average_grade
    if @grades.empty?
      puts "No grades available."
    else
      average = @grades.sum.to_f / @grades.size
      puts "Average grade: #{average.round(2)}"
    end
  end
  
  # ボーナス機能: 成績が一定以下の時にメッセージを表示
  def status
    if average_grade < 50
      puts "Student needs improvement."
    else
      puts "Student is performing well."
    end
  end
end
  