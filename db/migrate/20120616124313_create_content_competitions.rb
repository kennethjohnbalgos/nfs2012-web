class CreateContentCompetitions < ActiveRecord::Migration
  def change
    create_table :content_competitions do |t|
      t.string :title
      t.text :content
      t.integer :position
      t.boolean :clickable

      t.timestamps
    end
  end
end
