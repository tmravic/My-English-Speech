class CreateSpeeches < ActiveRecord::Migration[6.1]
  def change
    create_table :speeches do |t|
      t.string :title
      t.integer :length
      t.integer :status, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :training, null: false, foreign_key: true
      t.text :notes
      t.text :transcript

      t.timestamps
    end
  end
end
