class CreateSitewebs < ActiveRecord::Migration[7.0]
  def change
    create_table :sitewebs do |t|
      t.text :image
      t.string :name
      t.string :tag
      t.text :url
      t.text :description

      t.timestamps
    end
  end
end
