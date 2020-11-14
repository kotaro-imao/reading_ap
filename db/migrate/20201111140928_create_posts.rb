class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|  # postテーブルのカラムを作成
      t.text :title
      t.text :keyword
      t.text :plan
      t.string :achivement
      t.integer :user_id  # references ではなく integer を使用する
      t.timestamps
    end
  end
end
