class CreateHappyTrees < ActiveRecord::Migration[5.0]
  def change
    create_table :happy_trees do |t|
      t.string :color
      t.string :brush
      t.boolean :background
      t.text :desc

      t.timestamps
    end
  end
end
