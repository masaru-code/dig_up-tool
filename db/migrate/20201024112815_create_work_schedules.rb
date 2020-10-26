class CreateWorkSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :work_schedules do |t|
        t.references :task
        t.string :name, null: false       #工程を入力　空はエラー
        t.integer :position, default: 1   #並び替え？
        t.text :advise　　　　　　　　　　#アドバイスコメント
      t.timestamps
    end
  end
end
