class CreateArtcles < ActiveRecord::Migration[6.0]
  def change
    create_table :art do |t|
      t.string :title
      t.string :description
      t.string :url
      t.references :creator, null: false, foreign_key: true
      t.references :creature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
