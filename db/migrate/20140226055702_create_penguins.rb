class CreatePenguins < ActiveRecord::Migration
  def change
    create_table :penguins do |t|
      t.string :name
      t.string :gender
      t.string :personality
      t.string :colour_mum
      t.string :colour_dad
      t.string :colour_own
      t.string :belly_colour_mum
      t.string :belly_colour_dad
      t.string :belly_colour_own
      t.integer :beak_mum
      t.integer :beak_dad
      t.integer :beak_own
      t.integer :eyes_mum
      t.integer :eyes_dad
      t.integer :eyes_own
      t.integer :belly_mum
      t.integer :belly_dad
      t.integer :belly_own
      t.integer :body_mum
      t.integer :body_dad
      t.integer :body_own

      t.timestamps
    end
  end
end
