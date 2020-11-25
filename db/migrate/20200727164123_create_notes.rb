class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.boolean :starred, :default => false

      t.timestamps
    end
  end
end
