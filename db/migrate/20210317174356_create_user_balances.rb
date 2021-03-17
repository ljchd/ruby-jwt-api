class CreateUserBalances < ActiveRecord::Migration[6.1]
  def change
    create_table :user_balances do |t|
      t.string :balance
      t.integer :balanceAchieve
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
