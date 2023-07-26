class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.references :skillable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
