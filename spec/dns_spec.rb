require 'spec_helper'

describe route53_hosted_zone('tomohiro.me.') do
  it { should exist }
  its(:resource_record_set_count) { should eq 6 }

  it { should have_record_set('tomohiro.me.').ns("ns-1300.awsdns-34.org.\nns-1626.awsdns-11.co.uk.\nns-354.awsdns-44.com.\nns-559.awsdns-05.net.").ttl(172800) }
  it { should have_record_set('tomohiro.me.').soa('ns-1300.awsdns-34.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400').ttl(900) }

  it { should have_record_set('tomohiro.me.').alias('d2tgkw4lnafrdv.cloudfront.net.', 'Z2FDTNDATAQYW2') }
  it { should have_record_set('www.tomohiro.me.').alias('d2tgkw4lnafrdv.cloudfront.net.', 'Z2FDTNDATAQYW2') }
  it { should have_record_set('_keybase.tomohiro.me.').txt('"keybase-site-verification=Poyjvel7Sxt5__4im0nOGQyhurCNpumUXF5YEt_OkwQ"').ttl(300) }
  it { should have_record_set('znc.tomohiro.me.').a('128.199.91.91').ttl(300) }
end
