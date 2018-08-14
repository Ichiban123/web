class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text        #필드
 
      t.timestamps null: false
    end
  end
end   #테이블은 아티클과 코멘트 생성됨