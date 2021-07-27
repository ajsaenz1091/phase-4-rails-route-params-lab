class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.by_name(name)
    students = self.arel_table
    self.where((students[:first_name].matches("%#{name}%")).or(students[:last_name].matches("%#{name}%")))
  end
end
