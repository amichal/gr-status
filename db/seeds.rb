# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

clients = Client.create!([
	{ :name => 'Starbucks Coffee Company', :logo_url => '/icons/Starbucks.gif', :web_sites_attributes => [
		{ :url => 'http://demo.cafepractices.info'}, 
		{ :url => 'http://cafepractices.info'}
		]
	}, 
	{ :name => 'Education Resource Strategies', :logo_url => '/icons/ERS.png', :web_sites_attributes => [
		{ :url => 'http://www.system2020.org/'}, 
		{ :url => 'http://www.erstools.org/dream'}, 
		{ :url => 'http://www.erstools.org/hold-em'}, 
		{ :url => 'http://www.erstools.org/assessments/resource_check'}
		]
	}, 
	{ :name => "The Author's Guild", :logo_url => "/icons/Author's Guild.png", :web_sites_attributes => [
		{ :url => 'http://www.authorsguild.org'}, 
		{ :url => 'http://www.authorsguild.net'}
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
		{ :url => 'http://index.healthequityalliance.us'},
    { :url => 'http://www.sdoh.org'}
		]
	}, { :name => 'Timeslips', :logo_url => '/icons/TimeSlips.png', :web_sites_attributes => [
		{ :url => 'http://www.timeslips.org'}
		]
	}, { :name => 'USGBC', :logo_url => '/icons/USGBC.png', :web_sites_attributes => [
		{ :url => 'http://www.gbig.org'}
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
		{ :url => 'https://www.kidzcentralstation.com'}
    ]
	}, { :name => 'VT Midi project', :logo_url => '/icons/VT.gif', :web_sites_attributes => [
		{ :url => 'http://www.vtmidi.org'}
		]
	}, { :name => 'Learning Forward', :logo_url => '/icons/Learning Forward.gif', :web_sites_attributes => [
		{ :url => 'http://www.sai-learningforward.org'}
		]
	}, { :name => 'Yorkville Sports Association', :logo_url => '/icons/YSA.png', :web_sites_attributes => [
		{ :url => 'https://members.ysaleagues.com'}
		]
	}, { :name => 'NEA', :logo_url => '/icons/NEA.gif', :web_sites_attributes => [
		{ :url => 'http://www.keysonline.org'}
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
