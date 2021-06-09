class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.references :user, foreign_key: true
      t.datetime :start_time, null: false
      t.timestamps
    end
  end
end
