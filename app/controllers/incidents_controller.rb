class IncidentsController < ApplicationController
  def new
  	@incident = Incident.new(school_name: 'Lincoln High School')
  	@incient_images = @incident.incident_images.build 
  end

  def create
  	@incident = Incident.new(incident_params)

    if @incident.save
		if params[:incident][:incident_images_attributes].present?
		    params[:incident][:incident_images_attributes]["0"][:image].each { |image|
		      @incident.incident_images.create(image: image)
		    }
		  end
	  flash[:notice] = "Thanks for your support."
	  redirect_to root_path
	else 
	  flash[:alert] = "Something went wrong"
	  render :new
	end

  end

  private
  def incident_params
  	params.require(:incident).permit(:school_name, :description)
  end
end
