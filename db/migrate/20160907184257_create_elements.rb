class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :url
      t.string :elemtype
      t.string :content

      t.timestamps null: false
    end
  end
end
