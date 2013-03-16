# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "profanity_filter"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Bair"]
  s.date = "2011-09-30"
  s.description = "Allows you to filter profanity using basic replacement or a dictionary term."
  s.email = "adambair@gmail.com"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "http://github.com/intridea/profanity_filter"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "A Rails plugin gem for filtering out profanity."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
