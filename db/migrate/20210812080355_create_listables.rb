class CreateListables < ActiveRecord::Migration[6.1]
  def change
    create_table :listables do |t|
      t.belongs_to :collection
      t.belongs_to :list
      t.timestamps
    end
  end
end
