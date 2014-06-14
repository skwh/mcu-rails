require 'spec_helper'

__END__

describe 'layouts/application' do
    context 'standard' do
        before { visit '/' }
    	it {
    		should have_css("div#header")
    	}
        it {
            should have_selector('div#messages')
        }
    	it {
    		should have_css("div#slideshow")
    	}
        it {
        	should have_css("div#news_feed")
        }
        it {
        	should have_css("div#user_info")
        }
        it {
        	should have_css("div#event_box")
        }
        it {
        	should have_css("div#server_info")
        }
        it {
        	should have_css("div#footer")
        }
    end
end