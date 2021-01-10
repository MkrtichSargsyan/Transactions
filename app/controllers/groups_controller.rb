class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy]

  def index
    @groups = Group.all
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

end
