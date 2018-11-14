class CreateAlkalinities < ActiveRecord::Migration[5.2]
  def change
    create_table :alkalinities do |t|
      t.numeric :dKH

      t.timestamps
    end
  end
end
