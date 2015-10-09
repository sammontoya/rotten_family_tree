class Person < ActiveRecord::Base
  # has_one :person, through: "mother"
  # has_many :person, add_foreign_key :mother
  validates :first_name, :family_name, :presence => true

end
