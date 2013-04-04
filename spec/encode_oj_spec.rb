require 'faraday_middleware/encode_oj'

describe FaradayMiddleware::EncodeOj do

  before(:each) do
    @parsed_body = stub("{\":a\":1}")
    @request = {:a => 1}

    @connection = Faraday.new do |builder|
      builder.request :oj
      builder.adapter :test do |stub|
        stub.post('/url', Oj.dump(@request)) do
          [200, {}, @parsed_body]
        end
      end
    end
  end

  it "encode the request body with Oj.dump" do
    @connection.post('/url', @request).body.should == @parsed_body
  end
end