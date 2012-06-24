class CreateContentPartners < ActiveRecord::Migration
  def change
    create_table :content_partners do |t|
      t.string :title
      t.text :content
      t.integer :position
      t.boolean :clickable

      t.timestamps
    end
  end
end
