# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'octorouter::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes nodejs' do
    expect(chef_run).to include_recipe('nodejs::default')
  end

  it 'includes the `ubuntu_base` recipe' do
    expect(chef_run).to include_recipe('ubuntu_base::default')
  end

  it 'includes the `octobase` recipe' do
    expect(chef_run).to include_recipe('octobase::default')
  end

  it 'includes the `redis` recipe' do
    expect(chef_run).to include_recipe('redis::default')
  end

  it 'includes the `hipache` recipe' do
    expect(chef_run).to include_recipe('hipache::default')
  end

  it 'includes the `serf` recipe' do
    expect(chef_run).to include_recipe('serf::default')
  end

  before do
    stub_command("hipache -h | grep 'hipache server'").and_return(true)
  end
end
