# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'posts/index', type: :view do
  before(:each) do
    post1 = create(:post, title: 'Title', content: 'MyText')
    post2 = create(:post, title: 'Title', content: 'MyText')
    assign(:posts, [
             post1,
             post2
           ])
  end

  it 'renders a list of posts' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
  end
end
