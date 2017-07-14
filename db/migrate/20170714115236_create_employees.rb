class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :Name
      t.string :Project
      t.text :Team_lead
      t.string :Skill_number

      t.timestamps
    end
  end
end
