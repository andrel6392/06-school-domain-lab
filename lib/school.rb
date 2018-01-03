# code here!

class School
    attr_accessor :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(name, grade)
        if @roster[grade].nil?
            @roster[grade] = [name]
        else
            @roster[grade] << name
        end
    end
    
    def grade(num)
        @roster[num]
    end
    
    def sort
        roster_sorted = {}
        @roster.map do |grade, students|
            roster_sorted[grade] = students.sort
        end
        roster_sorted
    end
end