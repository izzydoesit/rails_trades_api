require 'spec_helper'
require 'rails_helper'
require 'rspec/rails'

RSpec.describe "NoResourcesTradesControllerSpec", :type => :request do

  it 'findAllTrades' do

    # {
    #     "comment": "Find all the trades",
    #     "test_comment": "It tests finding all the trades",
    #     "test_name": "findAllTrades",
    #     "test_class": "NoResourcesTradesControllerSpec",
    #     "test_priority": 3,
    #     "endpoint": "/trades",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": [],
    #     "response_code": 200
    # }

    get '/trades'
    expect(response.status).to eq(200)
  end

  it 'findAllTradesByNonExistingUserIdAndNonExistingStockSymbol' do

    # {
    #     "comment": "Find all the trades by non-existing user id 1 and non-existing stock symbol A",
    #     "test_comment": "It tests finding all the trades by user id and stock symbol",
    #     "test_name": "findAllTradesByNonExistingUserIdAndNonExistingStockSymbol",
    #     "test_class": "NoResourcesTradesControllerSpec",
    #     "test_priority": 3,
    #     "endpoint": "/trades/users/1/stocks/A",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }

    get '/trades/users/1/stocks/A'
    expect(response.status).to eq(404)
  end

  it 'findAllTradesByNonExistingUserId' do

    # {
    #     "comment": "Find all the trades by non-existing user id 1",
    #     "test_comment": "It tests finding all the trades by user id",
    #     "test_name": "findAllTradesByNonExistingUserId",
    #     "test_class": "NoResourcesTradesControllerSpec",
    #     "test_priority": 3,
    #     "endpoint": "/trades/users/1",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }

    get '/trades/users/1'
    expect(response.status).to eq(404)
  end

  it 'findAllTradesByNonExistingStockSymbol' do

    # {
    #     "comment": "Find all the trades by non-existing stock symbol A",
    #     "test_comment": "It tests finding all the trades by user id",
    #     "test_name": "findAllTradesByNonExistingStockSymbol",
    #     "test_class": "NoResourcesTradesControllerSpec",
    #     "test_priority": 3,
    #     "endpoint": "/trades/stocks/A",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }

    get '/trades/users/1'
    expect(response.status).to eq(404)
  end

  it 'findTradeByNonExistingId' do

    # {
    #     "comment": "Find trade by non-existing id 1",
    #     "test_comment": "It tests finding trade",
    #     "test_name": "findTradeByNonExistingId",
    #     "test_class": "NoResourcesTradesControllerSpec",
    #     "test_priority": 3,
    #     "endpoint": "/trades/1",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }

    get '/trades/1'
    expect(response.status).to eq(404)
  end

  it 'createTrade' do

    # {
    #     "comment": "Create trade with id 1",
    #     "test_comment": "It tests creating trade",
    #     "test_name": "createTrade",
    #     "test_class": "NoResourcesTradesControllerSpec",
    #     "test_priority": 3,
    #     "endpoint": "/trades",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 1,
    #         "type": "buy",
    #         "user": {
    #             "id": 2,
    #             "name": "Amy Palmer"
    #         },
    #         "symbol": "AA",
    #         "shares": 11,
    #         "price": 174.82,
    #         "timestamp": "2018-12-28 13:18:48"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 1, "type": "buy", "user": { "id": 2, "name": "Amy Palmer" }, "symbol": "AA", "shares": 11, "price": 174.82, "timestamp": "2018-12-28 13:18:48" }
    post '/trades', params
    expect(response.status).to eq(201)
  end

  it 'createTradeWithExistingId' do

    # {
    #     "comment": "Create trade with existing id 1",
    #     "test_comment": "It tests creating trade",
    #     "test_name": "createTradeWithExistingId",
    #     "test_class": "NoResourcesTradesControllerSpec",
    #     "test_priority": 3,
    #     "endpoint": "/trades",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 1,
    #         "type": "buy",
    #         "user": {
    #             "id": 2,
    #             "name": "Amy Palmer"
    #         },
    #         "symbol": "AA",
    #         "shares": 11,
    #         "price": 174.82,
    #         "timestamp": "2018-12-28 13:18:48"
    #     },
    #     "response": "",
    #     "response_code": 400
    # }

    params = { "id": 1, "type": "buy", "user": { "id": 2, "name": "Amy Palmer" }, "symbol": "AA", "shares": 11, "price": 174.82, "timestamp": "2018-12-28 13:18:48" }
    post '/trades', params
    expect(response.status).to eq(400)
  end
end
