require 'spec_helper'

describe Person do
  it "should validate the presence of a first name" do
      first_name = Person.new({:first_name => '' })
      expect(first_name.save).to eq false
  end
  it "should validate the presence of a family name" do
      family_name = Person.new({:family_name => '' })
      expect(family_name.save).to eq false
  end

  it "should accept a mother" do
    myMother = Person.new({:first_name => 'MyMother', :family_name => 'L'})
    myMother.save
    myPerson = Person.new({:first_name => 'Me', :family_name => 'Myself'})
    myPerson.mother == myMother.id
    myPerson.save
    p myPerson

  end

  # it "should assign primary key to original person"

end
