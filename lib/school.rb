require "pry"

class School
    attr_accessor :roster, :name, :grade

    def initialize(roster)
        roster = {}
        @roster = roster
    end

    def add_student(name, grade)
        @grade = grade

        if roster[grade]
            roster[grade] << name
        else
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.map do |grade, name|
            name.sort!
        end
        roster.sort.to_h
    end

end