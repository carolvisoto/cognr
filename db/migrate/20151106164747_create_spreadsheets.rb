class CreateSpreadsheets < ActiveRecord::Migration
  def change
    create_table :spreadsheets do |t|
      t.string :title
      t.string :subtitle
      t.string :link
      t.text :description
      t.datetime :research_time
      t.text :tags
      t.string :groups
      t.string :project
      t.string :author
      t.string :language

      t.timestamps null: false
    end
  end
end
