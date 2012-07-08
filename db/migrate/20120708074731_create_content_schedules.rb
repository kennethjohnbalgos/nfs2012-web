class CreateContentSchedules < ActiveRecord::Migration
  def change
    create_table :content_schedules do |t|
      t.boolean :clickable
      t.text :content
      t.integer :position
      t.string :title

      t.timestamps
    end
  end
end
