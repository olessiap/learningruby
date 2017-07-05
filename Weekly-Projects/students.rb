class Student
  def initialize(name, gender, number, exam_score)
    @name = name
    @gender = gender
    @number = number
    @exam_score = exam_score
  end

  def accumulated_score(exam_score)
    @exam_score += exam_score/2
    p @exam_score
  end

  def display
    puts "the students name is #{@name}, gender is #{@gender}, phone is #{@number} and she got #{@exam_score}!"
  end

end

olessia = Student.new("olessia", "female", "9258177675", 99)
olga = Student.new("Olga", "female", 9257055976, 96)

#olessia.accumulated_score(100)
#olga.display("Olga", "female", 9257055976, 96)
olessia.display
olga.display
