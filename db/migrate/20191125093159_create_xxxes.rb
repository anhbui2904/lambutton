class CreateXxxes < ActiveRecord::Migration[6.0]
  def change
    create_table :xxxes do |t|
      t.string :image
      t.string :video
      t.string :title
      t.integer :star
      t.text :description

      t.timestamps
    end
  end
end
