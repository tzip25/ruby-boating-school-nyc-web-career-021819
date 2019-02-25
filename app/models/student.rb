require 'pry'

class Student

    attr_reader :first_name
    @@all = []

    def initialize(first_name)
      @first_name = first_name
      @@all << self
    end

    def self.all
      @@all
    end

    def add_boating_test(name, status, instructor)
      BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student(first_name)
      Student.all.select do |student|
        student.first_name == first_name
      end
    end

    def all_tests
      BoatingTest.all.select do |test|
        test.student == self
      end
    end

    def grade_percentage
      passed_tests = all_tests.select {|test| test.status == "passed"}.length.to_f
      (passed_tests / all_tests.length.to_f) * 100
    end

end
