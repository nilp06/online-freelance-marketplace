class CreateFreelancerUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :freelancer_user_profiles do |t|
      t.string :availability
      t.text :bio
      t.integer :hourly_rate
      t.string :goal
      t.string :exeperience_level
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
