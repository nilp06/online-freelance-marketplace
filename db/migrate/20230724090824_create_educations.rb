class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :college
      t.string :degree
      t.string :field_of_study
      t.date :start_date
      t.date :end_date
      t.string :description
      t.references :freelancer_user_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
