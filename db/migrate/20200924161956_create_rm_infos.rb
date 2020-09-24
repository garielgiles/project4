class CreateRmInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :rm_infos do |t|
      t.string :name
      t.string :dimension
      t.string :content

      t.timestamps
    end
  end
end
