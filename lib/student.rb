class Student
  attr_accessor :id, :name, :grade

    def self.new_from_db(row)
    # create a new Student object given a row from the database	    
    student = self.new
    student.id, student.name, student.grade = row[0], row[1], row[2]
    student
  end

  def self.all
    # retrieve all the rows from the "Students" database	    
    sql = "SELECT * FROM students"
    # remember each row should be a new instance of the Student class	
    student = DB[:conn].execute(sql)
    DB[:conn].execute(sql).map do |row|
      self.new_from_db(row)
    end
  end

end
