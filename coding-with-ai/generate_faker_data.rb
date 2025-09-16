require 'faker'
require 'titleize'
require 'json'

COURSE_LEVELS = [1000, 1000, 1000, 2000, 2000, 3000, 3000, 4000, 4000, 4000, 5000, 6000]

CREDIT_HOURS = [1.0, 2.0, 3.0]

ENROLLMENT_LEVEL = [1, 1, 1, 2, 2, 3]

def gen_course_title
    "How to #{Faker::Verb.base} your #{Faker::Creature::Animal.name}".titleize
end

def gen_course_number
    "#{COURSE_LEVELS.sample + rand(100..999)}" 
end

class Departments
    
    def gen_dept
        @departments = []
        dept = Faker::Educator.subject
        @departments << dept
        @departments.sample
    end

end

class Instructors
    

    def initialize(departments)
        @instructors = {}
        @d = departments
    end
    
    def gen_instructor()
        dept = @d.gen_dept
        dept_instructors = @instructors[dept]
        course = "#{dept} #{gen_course_number} #{gen_course_title}"
        # No instructors yet in this department, mint new
        if !dept_instructors
            new_instructor = Faker::Name.name
            @instructors[dept] = [new_instructor]
            return {:course_ => course, :instructor => new_instructor}
        else
            instructor = (dept_instructors + [Faker::Name.name]).sample
            if !@instructors.include? instructor
                @instructors[dept] << instructor
            end
            return {:course_ => course, :instructor => instructor}
        end
    end
end

def gen_course(instructors)
    course = instructors.gen_instructor
    course[:credits] = CREDIT_HOURS.sample
    level = ENROLLMENT_LEVEL.sample
    course[:enrolled] = case level
    when 1
        rand(1..30)
    when 2
        rand(50..100)
    when 3
        rand(100..500)
    end
    return course
end

depts = Departments.new
insts = Instructors.new(depts)

courses = (1..100).to_a.map {|n| gen_course(insts)}

json = JSON.generate(courses)

File.write('/tmp/courses.json', json)