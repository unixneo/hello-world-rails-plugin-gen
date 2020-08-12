require 'rails_helper'

describe hello-world::ActionsController do
  before do
    Jobs.run_immediately!
  end

  it 'can list' do
    sign_in(Fabricate(:user))
    get "/hello-world/list.json"
    expect(response.status).to eq(200)
  end
end
