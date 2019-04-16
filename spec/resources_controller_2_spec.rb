require 'spec_helper'
require 'rails_helper'
require 'rspec/rails'

RSpec.describe "ResourcesControllerSpec", :type => :request do

  it 'eraseAllRecords' do

    # {
    #     "comment": "Erase all the trade records including user and stock records",
    #     "test_comment": "It tests erasing all the records",
    #     "test_name": "eraseAllRecords",
    #     "test_class": "ResourcesControllerSpec",
    #     "test_priority": 2,
    #     "endpoint": "/erase",
    #     "method": "DELETE",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 200
    # }

    delete '/erase'
    expect(response.status).to eq(200)
  end
end
