# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

clients = Client.create!([
	{ :name => 'Starbucks Coffee Company', :description=> 'Hi there', :harvest_client_id => 1, :logo_url => '/icons/Starbucks.gif', :web_sites_attributes => [
		{ :url => 'http://cafepractices.info', :git_path => 'greenriver/starbucks-vrs', :ga_profile_id=> '13278666'},
		{ :url => 'http://demo.cafepractices.info'}		
		]
	}, 
	{ :name => 'Education Resource Strategies', :logo_url => '/icons/ERS.png', :web_sites_attributes => [
		{ :url => 'http://www.erstools.org/dream', :ga_profile_id => '3599892', :git_path => 'greenriver/ers-dream'}, 
		{ :url => 'http://www.system2020.org/', :ga_profile_id => '68926892'}, 
		{ :url => 'http://www.erstools.org/hold-em', :ga_profile_id => '52525252'}, 
		{ :url => 'http://www.erstools.org/assessments/resource_check'}
		]
	}, 
	{ :name => "The Author's Guild", :logo_url => "/icons/Author's Guild.png", :web_sites_attributes => [
		{ :url => 'http://www.authorsguild.org', :git_path => 'greenriver/ag-dotorg'}, 
		{ :url => 'http://www.authorsguild.net', :ga_profile_id => '18717496', :git_path => 'greenriver/ag-sitebuilder'}
		]
	}, 
	{ :name => 'Noveda Technologies', :logo_url => '/icons/Noveda.png', :web_sites_attributes => [
		{ :url => 'http://www.makemesustainable.com'}
    ]
	}, 
	{ :name => 'BibMe', :logo_url => '/icons/Bibme.png', :web_sites_attributes => [
		{ :url => 'http://www.bibme.org'}
		]
	}, 
	{ :name => 'CADH', :logo_url => '/icons/CADH.png', :web_sites_attributes => [
		{ :url => 'http://index.healthequityalliance.us', :ga_profile_id => '36974232', :git_path => 'greenriver/cadh-hei'},
    	{ :url => 'http://www.sdoh.org', :ga_profile_id => '70151662'}
		]
	}, { :name => 'Timeslips', :logo_url => '/icons/TimeSlips.png', :web_sites_attributes => [
		{ :url => 'http://www.timeslips.org'}
		]
	}, { :name => 'USGBC', :logo_url => '/icons/USGBC.png', :web_sites_attributes => [
		{ :url => 'http://www.gbig.org', :ga_profile_id => '59704014', :git_path => 'greenriver/usgbc-gbig'}
    ]
	}, { :name => 'FCA', :logo_url => '/icons/FCA.jpeg', :web_sites_attributes => [
		{ :url => 'http://www.foundationforcontemporaryarts.org'}
		]
	}, { :name => 'University of Virgina', :logo_url => 'http://placehold.it/100x100', :web_sites_attributes => [
		{ :url => 'http://canlead.net'}, 
		{ :url => 'http://dev.canlead.net'}, 
		{ :url => 'http://course.canlead.net'}, 
		{ :url => 'http://www.etips.info'}
		]
	}, { :name => 'Kidz Central Station, LLC', :logo_url => '/icons/KCS.png', :web_sites_attributes => [
		{ :url => 'https://www.kidzcentralstation.com', :ga_profile_id => '62151399', :git_path => 'greenriver/kcs'}
    ]
	}, { :name => 'VT Midi project', :logo_url => '/icons/VT.gif', :web_sites_attributes => [
		{ :url => 'http://www.vtmidi.org'}
		]
	}, { :name => 'Learning Forward', :logo_url => '/icons/Learning Forward.gif', :web_sites_attributes => [
		{ :url => 'http://www.sai-learningforward.org'}
		]
	}, { :name => 'Yorkville Sports Association', :logo_url => '/icons/YSA.png', :web_sites_attributes => [
		{ :url => 'https://members.ysaleagues.com', :git_path => 'greenriver/ysa-ysaleagues'}
		]
	}, { :name => 'NEA', :logo_url => '/icons/NEA.gif', :web_sites_attributes => [
		{ :url => 'http://www.keysonline.org', :git_path => 'greenriver/nea-keys'}
		]
	}, { :name => 'BuildingGreen', :logo_url => '/icons/bg.png', :web_sites_attributes => [
		{ :url => 'http://www.buildinggreen.com'}
		]
	}, { :name => 'Foundation for Arts Initiatives', :logo_url => '/icons/ffai.gif', :web_sites_attributes => [
		{ :url => 'http://www.ffaiarts.net'}
		]
	}, { :name => 'Citizens Committee for New York City', :logo_url => '/icons/ccnyc.gif', :web_sites_attributes => [
		{ :url => 'http://www.citizensnyc.org'}
		]
	}, { :name => 'The Bohen Foundation', :logo_url => '/icons/bohen.png', :web_sites_attributes => [
		{ :url => 'http://www.bohen.org'}
		]
	}, { :name => 'Saltzman Institute of War and Peace Studies', :web_sites_attributes => [
		{ :url => 'http://www.siwps.com'}
		]
	}, { :name => 'League of Rural Voters', :logo_url => '/icons/lorv.gif', :web_sites_attributes => [
		{ :url => 'http://www.leagueofruralvoters.org'}
		]
	}, { :name => 'Main Street Project', :logo_url => '/icons/msp.png', :web_sites_attributes => [
		{ :url => 'http://www.mainstreetproject.org'}
		]
	}, { :name => 'WEA Special Education Support Center', :logo_url => '/icons/sesc.png', :web_sites_attributes => [
		{ :url => 'http://www.specialeducationsupportcenter.org'}
		]
	}, { :name => 'TURN Exchange', :logo_url => '/icons/turn.gif', :web_sites_attributes => [
		{ :url => 'http://www.turnexchange.net'}
		]
	}, { :name => 'ECHO', :web_sites_attributes => [
		{ :url => 'http://www.echospace.org'}
		]
	}, { :name => 'Learning Options', :logo_url => '/icons/lo.png', :web_sites_attributes => [
		{ :url => 'http://www.learningoptions.net'}
		]
	}

	])
