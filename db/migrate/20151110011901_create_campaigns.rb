class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :title
      t.string :goal
      t.text :objectives
      t.string :consulting
      t.text :ideas
      t.string :focus
      t.string :brandwork
      t.string :totalbudget
      t.string :retainerbudget

      t.timestamps
    end
  end
end
