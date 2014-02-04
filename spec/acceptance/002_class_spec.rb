require 'spec_helper_acceptance'

describe "elasticsearch class:" do
  it 'should run successfully' do
    pp = "class { 'elasticsearch': config => { 'node.name' => 'elasticearch001' } }"

    # Run it twice and test for idempotency
    apply_manifest(pp, :catch_failures => true)
    expect(apply_manifest(pp, :catch_failures => true).exit_code).to be_zero
  end

end
