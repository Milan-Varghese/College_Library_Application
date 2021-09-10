class Books < ActiveRecord::Migration[6.1]
  def self.up
    create_table :Books do |t|
      t.column :title, :string, :limit => 32, :null => false
      t.column :author, :string
      t.column :description, :text
      t.column :details, :text
      t.column :name, :string
      t.column :taken, :add_timestamps_for_alter
      t.column :return, :add_timestamps_for_alter
    end
  end

  def self.down
    drop_table :Books
  end
end
