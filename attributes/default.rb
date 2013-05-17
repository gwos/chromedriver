default['chromedriver']['version'] = '26.0.1383.0'
default['chromedriver']['zip_file'] = "chromedriver_linux64_#{node['chromedriver']['version']}.zip"
default['chromedriver']['source_url'] = "http://chromedriver.googlecode.com/files/#{node['chromedriver']['zip_file']}"
default['chromedriver']['install_dir'] = '/usr/bin'
