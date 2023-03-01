class CreateWhatWeOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :what_we_offers do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
