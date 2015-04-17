require 'test_helper'
require 'stack'

describe('Stack') do
  it('visit(website): adds website to the top of the list') do
    stack = BrowsingHistory.new
    stack.visit('Facebook')
    stack.visit('Twitter')
    stack.current.website.must_equal 'Twitter'
  end

  it('go_back: removes the current website from the stack and adds it to GoForward') do
    stack = BrowsingHistory.new
    stack.visit('Facebook')
    stack.visit('Twitter')
    stack.go_back
    stack.current.website.must_equal 'Facebook'
    stack.hold.next_site.must_equal 'Twitter'
  end

  it('go_forward: Should remove the current website from GoForward and add to GoBack.') do
    stack = BrowsingHistory.new
    stack.visit('Facebook')
    stack.visit('Twitter')
    stack.visit('Gmail')
    stack.visit('Pandora')
    stack.go_back
    stack.go_back
    stack.go_back
    stack.go_forward
    stack.current.website.must_equal 'Twitter'
    stack.hold.next_site.must_equal 'Gmail'
  end
end
