class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.string :blindrange
      t.string :situation
      t.string :opponent
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
