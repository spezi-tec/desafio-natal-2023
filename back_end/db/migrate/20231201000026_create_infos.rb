class CreateInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :infos do |t|
      t.string :url_img
      t.string :kind
      t.text :description

      t.timestamps
    end
  end
end
