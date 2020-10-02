module AuthenticationHelper
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      sign_in FactoryBot.create(:user)
    end
  end

   def login_admin
     before(:each) do
       @request.env["devise.mapping"] = Devise.mappings[:admin]
       sign_in FactoryBot.create(:admin)
     end
   end
end
