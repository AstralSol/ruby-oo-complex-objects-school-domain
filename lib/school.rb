class School
    attr_accessor :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        @roster.each_value do |name|
        name.sort!
        end
    end
end