Given(/^I am on google search page$/) do
  visit_page SearchPage
end

When(/^I enter a (.*)$/) do |search_key|
  on_page SearchPage do |search_page|
    search_page.search_for = search_key
    search_page.do_search(search_key)
  end
end

Then(/^I should see the search results$/) do
  sleep 2
  on_page SearchResults do |search_results_page|
    @current_page.title
    @current_page.title.include? "Google Search"
    @current_page.text
    @current_page.current_url

    search_results_page.results_element.wait_until do
      puts 'element is present (wait_until)'
      puts search_results_page.results_element.text
    end

    if search_results_page.results_element.when_present
      puts 'element is present'
      puts search_results_page.results_element.text
    else
      puts 'element is not present'
    end

    if search_results_page.results_element.exists?
      puts 'element exists'
      puts search_results_page.results_element.text
    else
      puts 'element does not exists'
    end



    @current_page.results_element.when_present do
      puts 'present'
      puts search_results_page.results_element.text
    end
    search_results_page.results_element.when_visible do
      puts 'visible'
      puts search_results_page.results_element.text
    end
    #puts search_results_page.results_element.exist?
  end


end
