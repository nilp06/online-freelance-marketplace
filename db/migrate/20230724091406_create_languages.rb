class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.string :language_name
      t.string :proficiency_level
      t.references :freelancer_user_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
