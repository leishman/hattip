require 'spec_helper'

describe PostsController do
	describe "GET #show" do
		it "responds with an HTTP status code of 200" do
			get :show
			expect(response).to_be success
		end
	end
end