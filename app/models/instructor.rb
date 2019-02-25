require 'pry'

class Instructor

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    BoatingTest.all.map do |boating_test|
      if boating_test.name == test_name && boating_test.student == student
        boating_test.status = "passed"
        return boating_test
      else
        return BoatingTest.new(student, test_name, "passed", self)
      end
    end
  end

  def fail_student(student, test_name)
    BoatingTest.all.map do |boating_test|
      if boating_test.name == test_name && boating_test.student == student
        boating_test.status = "fails"
        return boating_test
      else
        return BoatingTest.new(student, test_name, "failed", self)
      end
    end
  end

end
