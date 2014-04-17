class SearchPage
  include PageObject

  page_url 'http://www.google.com'

  text_field(:search_for, :name=>"q" )

  button(:search, :name=>"btnG")

  def do_search(search_key)
    self.search_for = search_key
    self.search
  end
end