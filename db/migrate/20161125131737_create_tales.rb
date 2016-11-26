class CreateTales < ActiveRecord::Migration[5.0]
  def change
    create_table :tales do |t|
      t.string :player
      t.text :body
      t.references :character, foreign_key: true

      t.timestamps
    end
  end
end
