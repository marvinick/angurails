class VisitorsController < ApplicationController

  def index
    @visitor = Location.all
    respond_to do |format|
      format.json { render json: Visitor.all }
      format.html { Visitor.all } 
    end
  end

  def create
    respond_with Visitor.create(visitor_params)
  end

  def destroy
    respond_with Visitor.destroy(params[:id])
  end

private

  def visitor_params
    params.require(:visitor).permit(:first_name, :last_name, :reason)
  end
end
