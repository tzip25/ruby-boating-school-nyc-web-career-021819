require 'pry'

class BoatingTest

  attr_reader :student,:name, :instructor
  attr_accessor :status
  @@all = []

  def initialize(student, name, status, instructor)
    @student, @name, @status, @instructor = student, name, status, instructor
    @@all << self
  end

  def self.all
    @@all
  end

end
