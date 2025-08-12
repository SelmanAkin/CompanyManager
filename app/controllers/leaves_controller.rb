class LeavesController < ApplicationController
  
 before_action :set_leave, only: %i[ show edit update destroy approve reject ]
 before_action :authenticate_user!
  
  def index
    @leaves = Leave.all
  end

  def show
    
    @leave = Leave.find(params[:id])
  end

  def new
    @leave = Leave.new
  end

  def edit
  end

  def create
    @leave = Leave.new(leave_params)
    respond_to do |format|
      if @leave.save
        format.html { redirect_to @leave, notice: "Leave was successfully created." }
        format.json { render :show, status: :created, location: @leave }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leave.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @leave.update(leave_params)
        format.html { redirect_to @leave, notice: "Leave was successfully updated." }
        format.json { render :show, status: :ok, location: @leave }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leave.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @leave.destroy!

    respond_to do |format|
      format.html { redirect_to leaves_path, status: :see_other, notice: "Leave was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  def approve
    @leave.update(status: :approved)
    redirect_to leaves_path, notice: 'İzin onaylandı.'
  end

def reject
  @leave.update(status: :rejected)
  redirect_to leaves_path, notice: 'İzin reddedildi.'
end
  
private
  
  def set_leave
    @leave = Leave.find(params[:id])
  end

  def leave_params
    params.require(:leave).permit(:employee_id, :start_date, :end_date, :status)
  end
end
