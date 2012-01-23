class StaffmembersController < ApplicationController
  # GET /staffmembers
  # GET /staffmembers.json
  def index
    @staffmembers = Staffmember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staffmembers.map(&:attributes) }
    end
  end

  # GET /staffmembers/1
  # GET /staffmembers/1.json
  def show
    @staffmember = Staffmember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @staffmember }
    end
  end

  # GET /staffmembers/new
  # GET /staffmembers/new.json
  def new
    @staffmember = Staffmember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @staffmember }
    end
  end

  # GET /staffmembers/1/edit
  def edit
    @staffmember = Staffmember.find(params[:id])
  end

  # POST /staffmembers
  # POST /staffmembers.json
  def create
    @staffmember = Staffmember.new(params[:staffmember])

    respond_to do |format|
      if @staffmember.save
        format.html { redirect_to @staffmember, notice: 'Staffmember was successfully created.' }
        format.json { render json: @staffmember, status: :created, location: @staffmember }
      else
        format.html { render action: "new" }
        format.json { render json: @staffmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /staffmembers/1
  # PUT /staffmembers/1.json
  def update
    @staffmember = Staffmember.find(params[:id])

    respond_to do |format|
      if @staffmember.update_attributes(params[:staffmember])
        format.html { redirect_to @staffmember, notice: 'Staffmember was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @staffmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffmembers/1
  # DELETE /staffmembers/1.json
  def destroy
    @staffmember = Staffmember.find(params[:id])
    @staffmember.destroy

    respond_to do |format|
      format.html { redirect_to staffmembers_url }
      format.json { head :ok }
    end
  end
  
  def search
    @staffmembers = Staffmember.where("forename like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staffmembers.map(&:attributes) }
    end
  end
end
