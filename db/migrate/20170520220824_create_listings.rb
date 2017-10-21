class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :homework_type
      t.integer :duedate
      t.string :listing_title
      t.text :listing_content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
