require 'rails_helper'

RSpec.describe TweetsController, :type => :controller do

  it 'returns tweets object with #index' do
    get :index
    expect(assigns(:tweets)).not_to be_nil
  end

end
