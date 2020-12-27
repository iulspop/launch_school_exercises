notification :libnotify, display_message: false

directories %w(lib) \
.select{|d| Dir.exist?(d) ? d : UI.warning("Directory #{d} does not exist")}

guard :minitest do
  # with Minitest::Unit
  watch(%r{^lib/(.*/)?([^/]+)\.rb$})     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
end
