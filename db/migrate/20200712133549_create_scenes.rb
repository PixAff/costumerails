class CreateScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :scenes do |t|
      t.integer :number
      t.string :name
      t.text :description
      t.string :mood
      t.string :place
      t.text :notes
      t.references :script, null: false, foreign_key: true

      t.timestamps
    end
  end
end
