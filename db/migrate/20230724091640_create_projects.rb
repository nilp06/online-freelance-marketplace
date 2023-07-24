class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.text :description
      t.string :title
      t.string :technology
      t.references :freelancer_user_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
