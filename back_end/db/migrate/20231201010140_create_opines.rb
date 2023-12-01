class CreateOpines < ActiveRecord::Migration[7.0]
  def change
    create_table :opines do |t|
      t.string :user_name
      t.text :comment

      t.timestamps
    end
  end
end
