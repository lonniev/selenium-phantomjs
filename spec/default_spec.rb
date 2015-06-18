require 'chefspec'

describe 'selenium-phantomjs::default' do
  
  let(:chef_run) do
    runner = ChefSpec::ChefRunner.new('platform' => 'windows', 'version'=> '12.04')
    runner.converge('selenium-phantomjs::default')
  end
    
  it 'should include the selenium-phantomjs recipe by default' do
    expect(chef_run).to include_recipe 'selenium-phantomjs::default'
  end

end
