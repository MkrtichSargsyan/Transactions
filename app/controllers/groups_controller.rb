class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy]

  def index
    @groups = Group.all.includes(:user).sorted_ASK
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.create(group_params)
    if @group.save
      redirect_to groups_path
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @group.update(group_params)
      redirect_to groups_path
    else
      render 'edit'
    end
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
  
  def group_icon
    params.require(:group).permit(:icon)
  end
end
