class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.text :title
      t.text :content
      t.references :calendar, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
