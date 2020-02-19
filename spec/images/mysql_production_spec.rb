require 'docker'
require 'serverspec'
require 'spec_helper'

describe "MySQL Production Database Is Set Up Correctly" do
  before(:all) do
    image = Docker::Image.build_from_dir('./production-mysql/.')

    set :backend, :docker
    set :docker_image, image.id
  end

  describe command('mysql --version') do
    its(:stdout) { should match "mysql  Ver 8.0.19 for Linux on x86_64 (MySQL Community Server - GPL)\n"}
  end

end
