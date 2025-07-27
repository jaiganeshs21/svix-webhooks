require "svix"

RSpec.describe Svix::Client do
    it "sets the server url" do
        client = Svix::Client.new("key", Svix::SvixOptions.new(false, "http://localhost:8000"))
        expect(client.instance_variable_get(:@application).instance_variable_get(:@api_client).instance_variable_get(:@uri).to_s).to eq("http://localhost:8000/api/v1")
    end

    it "sets the server url with a trailing slash" do
        client = Svix::Client.new("key", Svix::SvixOptions.new(false, "http://localhost:8000/"))
        expect(client.instance_variable_get(:@application).instance_variable_get(:@api_client).instance_variable_get(:@uri).to_s).to eq("http://localhost:8000/api/v1")
    end
end
