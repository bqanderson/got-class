class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :bio
      t.numeric :str
      t.numeric :dex
      t.numeric :con
      t.numeric :int
      t.numeric :wis
      t.numeric :cha

      t.timestamps
    end
  end
end
