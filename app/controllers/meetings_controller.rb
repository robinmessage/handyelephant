class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end
  
  def new
    @meeting = Meeting.new
  end
  
  def create
    @meeting = Meeting.create(params[:meeting])
    if @meeting.save?
      redirect_to meeting_path
    else
      render :new
    end
  end
  
  def edit
    @meeting = Meeting.find(params[:id])
  end
  
  def update
  end
end
