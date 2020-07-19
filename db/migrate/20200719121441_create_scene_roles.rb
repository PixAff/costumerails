class CreateSceneRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :scene_roles do |t|
      t.references :role, null: false, foreign_key: true
      t.references :scene, null: false, foreign_key: true

      t.timestamps
    end
  end
end
