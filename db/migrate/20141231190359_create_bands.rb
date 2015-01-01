class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :fanlevel
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
