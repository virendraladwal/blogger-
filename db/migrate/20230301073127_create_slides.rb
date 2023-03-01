class CreateSlides < ActiveRecord::Migration[7.0]
  def change
    create_table :slides do |t|
      t.string :image
      t.string :title
      t.string :sub

      t.timestamps
    end
  end
end
