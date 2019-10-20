# app/controllers/users_controller.rb
def current
  @current_user = User.find_by(id: session[:user_id])
  unless @current_user
    flash[:error] = "You must be logged in to see this page"
    redirect_to root_path
  end
end

# test/controllers/users_controller_test.rb
describe UsersController do
  before do 
    User.create!(username: "devin")
  end
  
  describe "current" do
    it "responds with success for a logged in user" do
      perform_login
      
      get current_user_path
      
      must_respond_with :success
    end
    
    it "sets flash[:error] and redirects when there is no user" do      
      get current_user_path
      
      expect(flash[:error]).must_equal "You must be logged in to see this page"
      must_redirect_to root_path
    end
    
  end
end

# test/test_helper.rb
class ActiveSupport::TestCase
  def perform_login(user = nil)
    user ||= User.first
    
    login_data = { user: { username: user.username } }
    
    post login_path, params: login_data
    
    expect(session[:user_id]).must_equal user.id
    
    return user
  end
end
