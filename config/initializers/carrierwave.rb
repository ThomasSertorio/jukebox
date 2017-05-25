CarrierWave.configure do |config|
 config.fog_provider = 'fog/openstack'
 config.fog_credentials = {
    :provider              => 'OpenStack',
    :openstack_username    => ENV['OS_USERNAME'],
    :openstack_api_key => ENV['OS_USER_MDP'],
    :openstack_tenant => ENV['OS_TENANT_NAME'],
    :openstack_tenant_id => ENV['OS_TENANT_ID'],
    :openstack_auth_url => ENV['OS_AUTH_URL'],
    :openstack_region    => ENV['REGION'],
    :openstack_temp_url_key => ENV['TEMP_KEY']
  }
  config.fog_directory = ENV['BUCKET_NAME']
  config.asset_host = ENV['OS_HOST_URL']
  config.fog_public = true

end