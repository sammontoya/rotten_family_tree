class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.column :first_name, :string
      t.column :family_name, :string
      t.column :mother, :integer
      t.column :father, :integer
    end
  end

end
