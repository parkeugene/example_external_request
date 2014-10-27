require 'spec_helper'

feature 'External request' do
  it 'queries Rorla contributors on GitHub' do

    stub_request(:get, "https://api.github.com/repos/RORLabNew/rorla/contributors").
    with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Host'=>'api.github.com', 'User-Agent'=>'Ruby'}).
    to_return(:status => 200, :body => "", :headers => {})

    expect(Github.contributors_info).to be_an_instance_of(String)

  end
end
