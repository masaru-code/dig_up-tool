class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
        t.references :user　　　　　　#user idカラムを作成　インデックスを自動で張ってくれる
        t.string :name, null: false   #文字列を入力　空は許可しない 
        t.integer :status, default: 0 #整数　初期値を０
      t.timestamps
    end
  end
end
