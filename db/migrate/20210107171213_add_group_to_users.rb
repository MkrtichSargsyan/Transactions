# frozen_string_literal: true

class AddGroupToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :groups, :user
  end
end
