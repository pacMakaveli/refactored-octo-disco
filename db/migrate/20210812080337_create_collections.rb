class CreateCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :collections do |t|
      t.belongs_to :user  
      t.string :name
      t.string :slug

      t.timestamps
    end
  end
end
