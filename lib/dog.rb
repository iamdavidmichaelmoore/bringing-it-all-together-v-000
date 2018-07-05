require 'pry'

class Dog

  attr_accessor :name, :breed
  attr_reader :id

  def initialize(name:, breed:)
    @name = name
    @breed = breed
  end

  def self.create_table
    sql = "CREATE TABLE IF NOT EXISTS dogs (
      id INTEGER PRIMARY KEY,
      name TEXT,
      breed TEXT
    )"

    DB[:conn].execute(sql)
  end



end
