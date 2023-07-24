class CreateCertifications < ActiveRecord::Migration[7.0]
  def change
    create_table :certifications do |t|
      t.string :name
      t.string :authority
      t.date :issue_date
      t.references :freelancer_user_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
