# -*- encoding: utf-8 -*-
# stub: paypal-checkout-sdk 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "paypal-checkout-sdk".freeze
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["http://developer.paypal.com".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-11-18"
  s.description = "This repository contains PayPal's Ruby SDK for Checkout REST API".freeze
  s.email = "dl-paypal-checkout-api@paypal.com".freeze
  s.homepage = "https://github.com/paypal/Checkout-Ruby-SDK".freeze
  s.licenses = ["https://github.com/paypal/Checkout-Ruby-SDK/blob/master/LICENSE".freeze]
  s.rubygems_version = "3.0.8".freeze
  s.summary = "This repository contains PayPal's Ruby SDK for Checkout REST API".freeze

  s.installed_by_version = "3.0.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paypalhttp>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
    else
      s.add_dependency(%q<paypalhttp>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<webmock>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<paypalhttp>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
  end
end
