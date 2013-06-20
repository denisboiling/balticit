require 'rake'

Given /^all standart pages$/ do
  # Amazing shit-code!!
  Balticit::Application.load_tasks
  Rake::Task['db:sample_data'].invoke
end
