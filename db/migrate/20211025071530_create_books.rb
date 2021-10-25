class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.integer :page_count
      t.date :published_date

      t.timestamps
    end
  end
end
