class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :url
      t.text :desc
      t.references :user

      t.timestamps
    end
  end
end
