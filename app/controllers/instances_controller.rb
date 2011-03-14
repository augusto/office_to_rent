class InstancesController < ApplicationController
  def index
    @instances = Instance.all
  end

  def show
    @instance = Instance.find(params[:id])
  end

  def new
    @instance = Instance.new
  end

  def create
    @instance = Instance.new(params[:instance])
    if @instance.save
      redirect_to @instance, :notice => "Successfully created instance."
    else
      render :action => 'new'
    end
  end

  def edit
    @instance = Instance.find(params[:id])
  end

  def update
    @instance = Instance.find(params[:id])
    if @instance.update_attributes(params[:instance])
      redirect_to @instance, :notice  => "Successfully updated instance."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @instance = Instance.find(params[:id])
    @instance.destroy
    redirect_to instances_url, :notice => "Successfully destroyed instance."
  end
end
