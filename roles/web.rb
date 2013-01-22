name 'web'
description 'Web Role'
run_list ['recipe[java]', 'recipe[tomcat]']
default_attributes({
	:java => {
		:install_flavor => "oracle",
		:oracle => {:accept_oracle_download_terms => true}
	}})
