notification :libnotify, display_message: false

directories %w(exercises)

guard :minitest, test_folders: ['exercises'] do
  watch(%r{exercises/(.*/)?(.*/)?(?!test_)([^/]+)\.rb}) do |match|
    "exercises/#{match[1]}#{match[2]}test_#{match[3]}.rb"
  end
  watch(%r{exercises/(.*/)?(.*/)?test_([^/]+)\.rb})
end