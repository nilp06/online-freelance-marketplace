class CreateFreelancerExeperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :freelancer_exeperiences do |t|
      t.string :company
      t.string :position
      t.string :type
      t.string :location
      t.date :start_date
      t.date :end_date
      t.boolean :present
      t.references :freelancer_user_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
