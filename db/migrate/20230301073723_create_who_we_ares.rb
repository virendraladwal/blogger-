class CreateWhoWeAres < ActiveRecord::Migration[7.0]
  def change
    create_table :who_we_ares do |t|
      t.string :image
      t.string :name
      t.string :sub_title
      t.string :description
      t.timestamps
    end
  end
end
