class CreateSocieties < ActiveRecord::Migration[5.2]
  def change
    create_table :societies do |t|
      t.string :org
      t.string :affiliation

      t.timestamps
    end
  end
end
