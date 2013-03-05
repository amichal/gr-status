# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

clients = Client.create!([
	{ :name => 'Starbucks', :web_sites_attributes => [
		{ :url => 'http://demo.cafepractices.info'}, 
		{ :url => 'http://cafepractices.info'}
		]
	}, 
	{ :name => 'ERS', :web_sites_attributes => [
		{ :url => 'http://www.system2020.org/'}, 
		{ :url => 'http://www.erstools.org/dream'}, 
		{ :url => 'http://www.erstools.org/hold-em'}, 
		{ :url => 'http://www.erstools.org/assessments/resource_check'}
		]
	}, 
	{ :name => "Author's Guild", :web_sites_attributes => [
		{ :url => 'http://www.authorsguild.org'}, 
		{ :url => 'http://www.authorsguild.net'}
		]
	}, 
	{ :name => 'Noveda', :web_sites_attributes => [
		{ :url => 'http://www.makemesustainable.com'}, 
		{ :url => 'Sparks'}
		]
	}, 
	{ :name => 'Bibme', :web_sites_attributes => [
		{ :url => 'http://www.bibme.org'}
		]
	}, 
	{ :name => 'CADH', :web_sites_attributes => [
		{ :url => 'http://index.healthequityalliance.us'}
		]
	}, { :name => 'Timeslips', :web_sites_attributes => [
		{ :url => 'http://www.timeslips.org'}
		]
	}, { :name => 'USGBC', :web_sites_attributes => [
		{ :url => 'http://www.gbig.org'}, 
		{ :url => 'http://gbig-staging.greenriver.org'}
		]
	}, { :name => 'FCA', :web_sites_attributes => [
		{ :url => 'http://www.foundationforcontemporaryarts.org'}
		]
	}, { :name => 'UVA', :web_sites_attributes => [
		{ :url => 'CanLead'}, 
		{ :url => 'Courseware'}, 
		{ :url => 'ETIPS'}
		]
	}, { :name => 'KCS', :web_sites_attributes => [
		{ :url => 'https://www.kidzcentralstation.com'}, 
		{ :url => 'http://kcs-staging.herokuapp.com'}
		]
	}, { :name => 'VT', :web_sites_attributes => [
		{ :url => 'http://www.vtmidi.org'}
		]
	}, { :name => 'Learning Forward', :web_sites_attributes => [
		{ :url => 'http://www.sai-learningforward.org'}
		]
	}, { :name => 'YSA', :web_sites_attributes => [
		{ :url => 'http://members.ysaleagues.com'}
		]
	}, { :name => 'NEA', :web_sites_attributes => [
		{ :url => 'http://www.keysonline.org'}
		]
	}

	])