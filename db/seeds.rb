# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

clients = Client.create!([
	{ :name => 'Starbucks', :logo_url => '/icons/Starbucks.gif', :web_sites_attributes => [
		{ :url => 'http://demo.cafepractices.info'}, 
		{ :url => 'http://cafepractices.info'}
		]
	}, 
	{ :name => 'ERS', :logo_url => '/icons/ERS.png', :web_sites_attributes => [
		{ :url => 'http://www.system2020.org/'}, 
		{ :url => 'http://www.erstools.org/dream'}, 
		{ :url => 'http://www.erstools.org/hold-em'}, 
		{ :url => 'http://www.erstools.org/assessments/resource_check'}
		]
	}, 
	{ :name => "Author's Guild", :logo_url => "/icons/Author's Guild.png", :web_sites_attributes => [
		{ :url => 'http://www.authorsguild.org'}, 
		{ :url => 'http://www.authorsguild.net'}
		]
	}, 
	{ :name => 'Noveda', :logo_url => '/icons/Noveda.png', :web_sites_attributes => [
		{ :url => 'http://www.makemesustainable.com'}, 
		{ :url => 'Sparks'}
		]
	}, 
	{ :name => 'Bibme', :logo_url => '/icons/Bibme.png', :web_sites_attributes => [
		{ :url => 'http://www.bibme.org'}
		]
	}, 
	{ :name => 'CADH', :logo_url => '/icons/CADH.png', :web_sites_attributes => [
		{ :url => 'http://index.healthequityalliance.us'}
		]
	}, { :name => 'Timeslips', :logo_url => '/icons/TimeSlips.png', :web_sites_attributes => [
		{ :url => 'http://www.timeslips.org'}
		]
	}, { :name => 'USGBC', :logo_url => '/icons/USGBC.png', :web_sites_attributes => [
		{ :url => 'http://www.gbig.org'}, 
		{ :url => 'http://gbig-staging.greenriver.org'}
		]
	}, { :name => 'FCA', :logo_url => '/icons/FCA.jpeg', :web_sites_attributes => [
		{ :url => 'http://www.foundationforcontemporaryarts.org'}
		]
	}, { :name => 'UVA', :logo_url => 'http://placehold.it/100x100', :web_sites_attributes => [
		{ :url => 'http://canlead.net'}, 
		{ :url => 'Courseware'}, 
		{ :url => 'http://www.etips.info'}
		]
	}, { :name => 'KCS', :logo_url => '/icons/KCS.png', :web_sites_attributes => [
		{ :url => 'https://www.kidzcentralstation.com'}, 
		{ :url => 'http://kcs-staging.herokuapp.com'}
		]
	}, { :name => 'VT', :logo_url => '/icons/VT.gif', :web_sites_attributes => [
		{ :url => 'http://www.vtmidi.org'}
		]
	}, { :name => 'Learning Forward', :logo_url => '/icons/Learning Forward.gif', :web_sites_attributes => [
		{ :url => 'http://www.sai-learningforward.org'}
		]
	}, { :name => 'YSA', :logo_url => '/icons/YSA.png', :web_sites_attributes => [
		{ :url => 'http://members.ysaleagues.com'}
		]
	}, { :name => 'NEA', :logo_url => '/icons/NEA.gif', :web_sites_attributes => [
		{ :url => 'http://www.keysonline.org'}
		]
	}

	])
