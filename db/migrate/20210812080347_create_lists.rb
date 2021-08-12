class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.belongs_to :user
      t.string :name
      t.string :description
      t.string :slug
      t.integer :owner, default: 0
      t.integer :role, default: nil
      t.timestamps
    end
  end
end
