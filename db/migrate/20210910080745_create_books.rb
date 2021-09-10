class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :Books do |t|

      t.timestamps
    end
  end
end
