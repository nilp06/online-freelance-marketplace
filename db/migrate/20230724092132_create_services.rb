class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.references :freelancer_user_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
