require 'spec_helper'
require 'rails_helper'
require 'rspec/rails'
require './spec/helpers/parse_response'

RSpec.configure do |c|
  c.include ParseResponse
end

RSpec.describe "TradesControllerSpec", :type => :request do

  it 'createTrade' do

    # {
    #     "comment": "Create trade with id 1",
    #     "test_comment": "It tests creating trade",
    #     "test_name": "createTrade",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
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
    post '/trades', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create trade with id 2",
    #     "test_comment": "It tests creating trade",
    #     "test_name": "createTrade",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 2,
    #         "type": "buy",
    #         "user": {
    #             "id": 2,
    #             "name": "Amy Palmer"
    #         },
    #         "symbol": "AA",
    #         "shares": 11,
    #         "price": 174.82,
    #         "timestamp": "2018-12-29 09:47:43"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 2, "type": "buy", "user": { "id": 2, "name": "Amy Palmer" }, "symbol": "AA", "shares": 11, "price": 174.82, "timestamp": "2018-12-29 09:47:43" }
    post '/trades', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create trade with id 3",
    #     "test_comment": "It tests creating trade",
    #     "test_name": "createTrade",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 3,
    #         "type": "buy",
    #         "user": {
    #             "id": 1,
    #             "name": "Briana Ortiz"
    #         },
    #         "symbol": "A",
    #         "shares": 20,
    #         "price": 155.32,
    #         "timestamp": "2019-01-01 11:19:01"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 3, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "A", "shares": 20, "price": 155.32, "timestamp": "2019-01-01 11:19:01" }
    post '/trades', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create trade with id 4",
    #     "test_comment": "It tests creating trade",
    #     "test_name": "createTrade",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 4,
    #         "type": "buy",
    #         "user": {
    #             "id": 2,
    #             "name": "Amy Palmer"
    #         },
    #         "symbol": "AA",
    #         "shares": 11,
    #         "price": 174.82,
    #         "timestamp": "2019-01-01 12:02:03"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 4, "type": "buy", "user": { "id": 2, "name": "Amy Palmer" }, "symbol": "AA", "shares": 11, "price": 174.82, "timestamp": "2019-01-01 12:02:03" }
    post '/trades', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create trade with id 5",
    #     "test_comment": "It tests creating trade",
    #     "test_name": "createTrade",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 5,
    #         "type": "buy",
    #         "user": {
    #             "id": 1,
    #             "name": "Briana Ortiz"
    #         },
    #         "symbol": "AA",
    #         "shares": 11,
    #         "price": 174.82,
    #         "timestamp": "2019-01-02 15:31:49"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 5, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "AA", "shares": 11, "price": 174.82, "timestamp": "2019-01-02 15:31:49" }
    post '/trades', params, format: :json
    expect(response.status).to eq 201

    # {
    #     "comment": "Create trade with id 6",
    #     "test_comment": "It tests creating trade",
    #     "test_name": "createTrade",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades",
    #     "method": "POST",
    #     "headers": {
    #         "Content-Type": "application/json"
    #     },
    #     "body": {
    #         "id": 6,
    #         "type": "buy",
    #         "user": {
    #             "id": 1,
    #             "name": "Briana Ortiz"
    #         },
    #         "symbol": "A",
    #         "shares": 20,
    #         "price": 155.32,
    #         "timestamp": "2019-01-02 15:42:18"
    #     },
    #     "response": "",
    #     "response_code": 201
    # }

    params = { "id": 6, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "A", "shares": 20, "price": 155.32, "timestamp": "2019-01-02 15:42:18" }
    post '/trades', params, format: :json
    expect(response.status).to eq 201
  end

  it 'createTradeWithExistingId' do

    # {
    #     "comment": "Create trade with existing id 1",
    #     "test_comment": "It tests creating trade",
    #     "test_name": "createTradeWithExistingId",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
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
    post '/trades', params, format: :json
    expect(response.status).to eq 400
  end

  it 'findTradeById' do

    # {
    #     "comment": "Find trade by id 1",
    #     "test_comment": "It tests finding trade",
    #     "test_name": "findTradeById",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades/1",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": {
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
    #     "response_code": 200
    # }

    resp = { "id": 1, "type": "buy", "user": { "id": 2, "name": "Amy Palmer" }, "symbol": "AA", "shares": 11, "price": 174.82, "timestamp": "2018-12-28 13:18:48" }
    get '/trades/1'
    expect(response.status).to eq 200
    expect(JSON.parse(response.body)).to eq(resp.deep_stringify_keys!)
  end

  it 'findTradeByNonExistingId' do

    # {
    #     "comment": "Find trade by non-existing id 7",
    #     "test_comment": "It tests finding trade",
    #     "test_name": "findTradeByNonExistingId",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades/7",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }

    get '/trades/7'
    expect(response.status).to eq 404
  end

  it 'findAllTradesByStockSymbol' do

    # {
    #     "comment": "Find all the trades by stock symbol A",
    #     "test_comment": "It tests finding trades by stock symbol",
    #     "test_name": "findAllTradesByStockSymbol",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades/stocks/A",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": [
    #         {
    #             "id": 3,
    #             "type": "buy",
    #             "user": {
    #                 "id": 1,
    #                 "name": "Briana Ortiz"
    #             },
    #             "symbol": "A",
    #             "shares": 20,
    #             "price": 155.32,
    #             "timestamp": "2019-01-01 11:19:01"
    #         },
    #         {
    #             "id": 6,
    #             "type": "buy",
    #             "user": {
    #                 "id": 1,
    #                 "name": "Briana Ortiz"
    #             },
    #             "symbol": "A",
    #             "shares": 20,
    #             "price": 155.32,
    #             "timestamp": "2019-01-02 15:42:18"
    #         }
    #     ],
    #     "response_code": 200
    # }

    resp = [ { "id": 3, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "A", "shares": 20, "price": 155.32, "timestamp": "2019-01-01 11:19:01" }, { "id": 6, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "A", "shares": 20, "price": 155.32, "timestamp": "2019-01-02 15:42:18" } ]
    get '/trades/stocks/A'
    resp = stringify_keys(resp)
    expect(response.status).to eq 200
    expect(JSON.parse(response.body)).to eq(resp)
  end

  it 'findAllTradesByNonExistingStockSymbol' do

    # {
    #     "comment": "Find all the trades by stock symbol AAP",
    #     "test_comment": "It tests finding trades by non-existing stock symbol",
    #     "test_name": "findAllTradesByNonExistingStockSymbol",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades/stocks/AAP",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }

    get '/trades/stocks/AAP'
    expect(response.status).to eq 404
  end

  it 'findAllTradesByUserId' do

    # {
    #     "comment": "Find all the trades by user id 1",
    #     "test_comment": "It tests finding trades by user id",
    #     "test_name": "findAllTradesByUserId",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades/users/1",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": [
    #         {
    #             "id": 3,
    #             "type": "buy",
    #             "user": {
    #                 "id": 1,
    #                 "name": "Briana Ortiz"
    #             },
    #             "symbol": "A",
    #             "shares": 20,
    #             "price": 155.32,
    #             "timestamp": "2019-01-01 11:19:01"
    #         },
    #         {
    #             "id": 5,
    #             "type": "buy",
    #             "user": {
    #                 "id": 1,
    #                 "name": "Briana Ortiz"
    #             },
    #             "symbol": "AA",
    #             "shares": 11,
    #             "price": 174.82,
    #             "timestamp": "2019-01-02 15:31:49"
    #         },
    #         {
    #             "id": 6,
    #             "type": "buy",
    #             "user": {
    #                 "id": 1,
    #                 "name": "Briana Ortiz"
    #             },
    #             "symbol": "A",
    #             "shares": 20,
    #             "price": 155.32,
    #             "timestamp": "2019-01-02 15:42:18"
    #         }
    #     ],
    #     "response_code": 200
    # }

    resp = [ { "id": 3, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "A", "shares": 20, "price": 155.32, "timestamp": "2019-01-01 11:19:01" }, { "id": 5, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "AA", "shares": 11, "price": 174.82, "timestamp": "2019-01-02 15:31:49" }, { "id": 6, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "A", "shares": 20, "price": 155.32, "timestamp": "2019-01-02 15:42:18" } ]
    get '/trades/users/1'
    resp = stringify_keys(resp)
    expect(response.status).to eq 200
    expect(JSON.parse(response.body)).to eq(resp)
  end

  it 'findAllTradesByNonExistingUserId' do

    # {
    #     "comment": "Find all the trades by user id 3",
    #     "test_comment": "It tests finding trades by non-existing user id",
    #     "test_name": "findAllTradesByNonExistingUserId",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades/users/3",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }

    get '/trades/users/3'
    expect(response.status).to eq 404
  end

  it 'findAllTradesByUserIdAndStockSymbol' do

    # {
    #     "comment": "Find all the trades by user id 1 and stock symbol A",
    #     "test_comment": "It tests finding trades by user id and stock symbol",
    #     "test_name": "findAllTradesByUserIdAndStockSymbol",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades/users/1/stocks/A",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": [
    #         {
    #             "id": 3,
    #             "type": "buy",
    #             "user": {
    #                 "id": 1,
    #                 "name": "Briana Ortiz"
    #             },
    #             "symbol": "A",
    #             "shares": 20,
    #             "price": 155.32,
    #             "timestamp": "2019-01-01 11:19:01"
    #         },
    #         {
    #             "id": 6,
    #             "type": "buy",
    #             "user": {
    #                 "id": 1,
    #                 "name": "Briana Ortiz"
    #             },
    #             "symbol": "A",
    #             "shares": 20,
    #             "price": 155.32,
    #             "timestamp": "2019-01-02 15:42:18"
    #         }
    #     ],
    #     "response_code": 200
    # }

    resp = [ { "id": 3, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "A", "shares": 20, "price": 155.32, "timestamp": "2019-01-01 11:19:01" }, { "id": 6, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "A", "shares": 20, "price": 155.32, "timestamp": "2019-01-02 15:42:18" } ]
    get '/trades/users/1/stocks/A'
    resp = stringify_keys(resp)
    expect(response.status).to eq 200
    expect(JSON.parse(response.body)).to eq(resp)
  end

  it 'findAllTradesByNonExistingUserIdAndNonExistingStockSymbol' do

    # {
    #     "comment": "Find all the trades by non-existing user id 4 and non-existing stock symbol AAP",
    #     "test_comment": "It tests finding trades by user id and stock symbol",
    #     "test_name": "findAllTradesByNonExistingUserIdAndNonExistingStockSymbol",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades/users/4/stocks/AAP",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }

    get '/trades/users/4/stocks/AAP'
    expect(response.status).to eq 404
  end

  it 'findAllTradesByUserIdAndNonExistingStockSymbol' do

    # {
    #     "comment": "Find all the trades by user id 1 and non-existing stock symbol AAP",
    #     "test_comment": "It tests finding trades by user id and stock symbol",
    #     "test_name": "findAllTradesByUserIdAndNonExistingStockSymbol",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades/users/1/stocks/AAP",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }

    get '/trades/users/1/stocks/AAP'
    expect(response.status).to eq 404
  end

  it 'findAllTradesByNonExistingUserIdAndStockSymbol' do

    # {
    #     "comment": "Find all the trades by non-existing user id 4 and stock symbol A",
    #     "test_comment": "It tests finding trades by user id and stock symbol",
    #     "test_name": "findAllTradesByNonExistingUserIdAndStockSymbol",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades/users/4/stocks/A",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": "",
    #     "response_code": 404
    # }

    get '/trades/users/4/stocks/A'
    expect(response.status).to eq 404
  end

  it 'findAllTrades' do

    # {
    #     "comment": "Find all the trades",
    #     "test_comment": "It tests finding all the trades",
    #     "test_name": "findAllTrades",
    #     "test_class": "TradesControllerSpec",
    #     "test_priority": 1,
    #     "endpoint": "/trades",
    #     "method": "GET",
    #     "headers": {},
    #     "body": {},
    #     "response": [
    #         {
    #             "id": 1,
    #             "type": "buy",
    #             "user": {
    #                 "id": 2,
    #                 "name": "Amy Palmer"
    #             },
    #             "symbol": "AA",
    #             "shares": 11,
    #             "price": 174.82,
    #             "timestamp": "2018-12-28 13:18:48"
    #         },
    #         {
    #             "id": 2,
    #             "type": "buy",
    #             "user": {
    #                 "id": 2,
    #                 "name": "Amy Palmer"
    #             },
    #             "symbol": "AA",
    #             "shares": 11,
    #             "price": 174.82,
    #             "timestamp": "2018-12-29 09:47:43"
    #         },
    #         {
    #             "id": 3,
    #             "type": "buy",
    #             "user": {
    #                 "id": 1,
    #                 "name": "Briana Ortiz"
    #             },
    #             "symbol": "A",
    #             "shares": 20,
    #             "price": 155.32,
    #             "timestamp": "2019-01-01 11:19:01"
    #         },
    #         {
    #             "id": 4,
    #             "type": "buy",
    #             "user": {
    #                 "id": 2,
    #                 "name": "Amy Palmer"
    #             },
    #             "symbol": "AA",
    #             "shares": 11,
    #             "price": 174.82,
    #             "timestamp": "2019-01-01 12:02:03"
    #         },
    #         {
    #             "id": 5,
    #             "type": "buy",
    #             "user": {
    #                 "id": 1,
    #                 "name": "Briana Ortiz"
    #             },
    #             "symbol": "AA",
    #             "shares": 11,
    #             "price": 174.82,
    #             "timestamp": "2019-01-02 15:31:49"
    #         },
    #         {
    #             "id": 6,
    #             "type": "buy",
    #             "user": {
    #                 "id": 1,
    #                 "name": "Briana Ortiz"
    #             },
    #             "symbol": "A",
    #             "shares": 20,
    #             "price": 155.32,
    #             "timestamp": "2019-01-02 15:42:18"
    #         }
    #     ],
    #     "response_code": 200
    # }

    resp = [ { "id": 1, "type": "buy", "user": { "id": 2, "name": "Amy Palmer" }, "symbol": "AA", "shares": 11, "price": 174.82, "timestamp": "2018-12-28 13:18:48" }, { "id": 2, "type": "buy", "user": { "id": 2, "name": "Amy Palmer" }, "symbol": "AA", "shares": 11, "price": 174.82, "timestamp": "2018-12-29 09:47:43" }, { "id": 3, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "A", "shares": 20, "price": 155.32, "timestamp": "2019-01-01 11:19:01" }, { "id": 4, "type": "buy", "user": { "id": 2, "name": "Amy Palmer" }, "symbol": "AA", "shares": 11, "price": 174.82, "timestamp": "2019-01-01 12:02:03" }, { "id": 5, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "AA", "shares": 11, "price": 174.82, "timestamp": "2019-01-02 15:31:49" }, { "id": 6, "type": "buy", "user": { "id": 1, "name": "Briana Ortiz" }, "symbol": "A", "shares": 20, "price": 155.32, "timestamp": "2019-01-02 15:42:18" } ]
    get '/trades'
    resp = stringify_keys(resp)
    expect(response.status).to eq 200
    expect(JSON.parse(response.body)).to eq(resp)
  end
end
