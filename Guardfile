notification :libnotify, display_message: false

directories %w(exercises) \
.select{|d| Dir.exist?(d) ? d : UI.warning("Directory #{d} does not exist")}

guard :minitest, test_folders: ['exercises'] do
  watch(%r{exercises/(?!test_)([^/]+)\.rb}) do |m|
    "exercises/test_#{m[1]}.rb"
  end
  watch(%r{exercises/test_([^/]+)\.rb})
end

# %r{^lib/(.*/)?([^/]+)\.rb$}