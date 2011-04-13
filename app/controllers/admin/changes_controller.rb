class Admin::ChangesController < Admin::AdminController

  menu_item :changelog

  def index
    @changes = Change.all
    respond_with @changes
  end

  def new
    @change = Change.new
    respond_with @change
  end

  def edit
    @change = Change.find(params[:id])
  end

  def create
    @change = Change.new(params[:change])
    flash[:notice] = 'Change was successfully created.' if @change.save
    respond_with @change, :location => admin_changes_path
  end

  def update
    @change = Change.find(params[:id])
    flash[:notice] = 'Change was successfully updated.' if @change.update_attributes(params[:change])
    respond_with @change, :location => admin_changes_path
  end

  def destroy
    @change = Change.find(params[:id])
    @change.destroy
    respond_with @change, :location => admin_changes_path
  end

end