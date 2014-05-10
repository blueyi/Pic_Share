require 'spec_helper'

describe User do

  before { @usr = User.new(name: "Blueyi",email: "blueyi@qq.com") }
  subject { @user }
  it { should respond_to(:name) } 
  it { should respond_to(:email) } 
end
