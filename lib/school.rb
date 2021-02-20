require "pry"

class School
    attr_accessor :roster

    def initialize(roster)
        @roster = {}
    end


    def add_student(name, grade_level)
       if !@roster[grade_level]
           @roster[grade_level] = []
           @roster[grade_level] << name
        else 
            @roster[grade_level] << name
        end  
    end

    def grade(grade_level)
        @roster[grade_level]
        
    end

    def sort
        new_roster = {}
        @roster.each do |grade_level, name|
          new_roster[grade_level] = name.sort
        end
          new_roster
    end

    

end



 school = School.new("Bayside High School")
 school.add_student("Homer Simpson", "9")


#binding.pry


# roster = key: value
# roster = {grade level:, [array of student names]}


# Checklist
#{x} Create new class School
#{x} Create new empty roster when new instance is initialized
#{x} Create method add_student that is able to add a new student
#{x} Method add_student is able to add multiple students to a grade(the instance)
#{x} Method add_student should be able to add students to different grades
#{} Method grade is able to retrieve students from a grade
#{} Method sort is able to sort the students