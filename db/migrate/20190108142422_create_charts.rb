class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.string :blindRange
      t.string :pokerSituation
      t.string :opponentType

      t.timestamps
    end
  end
end
