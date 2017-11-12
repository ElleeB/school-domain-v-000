
require 'pry'


class School

  attr_accessor :grade, :student
  attr_reader :school_name



  def initialize(school_name)
    ROSTER = {}
    @school_name = school_name
  end

  def add_student(student, grade)

    if
      ROSTER == {}
      ROSTER[grade] = [] << "#{student}"
    elsif
      keys = ROSTER.keys
        if keys.include?(grade) == true
          ROSTER[grade] << "#{student}"
        else
          ROSTER[grade] = [] << "#{student}"
        end
      end
  end

  def print_roster
    print ROSTER
  end

end





#create new empty array grade input into the hash and make it's value = to the array into which we schoop the students
#empty hash => create a grade array => scoop current student in
#no grade array for current grade => create a grade array => scoop current student in
#if current grade array exists => scoop current student in
