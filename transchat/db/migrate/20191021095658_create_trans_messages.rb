class CreateTransMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :trans_messages do |t|
      t.references :message, null: false, foreign_key: true
      t.string :language
      t.string :content

      t.timestamps
    end
  end
end
