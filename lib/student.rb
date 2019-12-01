class Student
  attr_accessor :id, :name, :grade

    def self.new_from_db(row)
    # create a new Student object given a row from the database	    
    student = self.new
    student.id, student.name, student.grade = row[0], row[1], row[2]
    student
  end

end
