class Student
  
  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize (name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end
  
  def self.create_table
    sql = "CREATE TABLE if not EXIST students;"
    DB[:conn].execute(sql)
  end

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
