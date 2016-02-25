class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.integer :length
      t.string :language

      t.integer :created_by_user_id

      t.timestamps null: false
    end
  end
end
