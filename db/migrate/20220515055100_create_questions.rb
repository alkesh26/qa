class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :body
      t.belongs_to :user, null: false, index: true

      t.timestamps
    end
  end
end
