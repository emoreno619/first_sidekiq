class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
