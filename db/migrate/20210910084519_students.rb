class Students < ActiveRecord::Migration[6.1]   def self.up
  create_table :subjects do |t|
    t.column :name, :string
    t.column :address, :text
    t.column :title, :string
  end

  Student.create :name => "Ali"
  Student.create :name => "Greg"
  Student.create :name => "John"
  Student.create :name => "Riya"
  Student.create :name => "Amal K"
end

def self.down
  drop_table :Students
end
end
