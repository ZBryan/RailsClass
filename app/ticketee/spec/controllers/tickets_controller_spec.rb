require 'spec_helper'

describe TicketsController do
	let(:user) { Factory(:confirmed_user) }
	let(:project) { Factory(:project) }
	let(:ticket) { Factory(:ticket, project: project, user: user) }

	context "Standard users" do
		it "cannot access a ticket for a project" do
			sign_in(:user, user)
			get :show, id: ticket.id, project_id: project.id
			response.should redirect_to(root_path)
			message = "The project you were looking for could not be found."
			flash[:alert].should eql(message)
		end
	end
end
