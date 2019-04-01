class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :position
      t.string :devilfruit
      t.boolean :haki
      t.belongs_to :society, foreign_key: true

      t.timestamps
    end
  end
end
