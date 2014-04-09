class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :list_id
      t.string :text
      t.integer :priority
      t.boolean :is_complete

      t.timestamps
    end
  end
end
