class CreateSocialAccountLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :social_account_links do |t|
      t.string :account_name
      t.string :link
      t.references :freelancer_user_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
