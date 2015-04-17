GoForward = Struct.new(:website, :history)
GoBack = Struct.new(:next_site, :last_viewed)

class BrowsingHistory
  attr_accessor :current, :hold

  def visit(website)
    @history = @current
    fwd = GoForward.new(website, @history)
    @current = fwd
  end

  def go_back
    fail "No websites in history" if @current.nil?
    temp = @current.website
    @current = @current.history

    @next_site = @hold
    back = GoBack.new(temp, @next_site)
    @hold = back
  end

  def go_forward
    fail "This was your last visited website" if @hold.nil?
    temp = @hold.next_site
    @hold = @hold.last_viewed

    visit(temp)
  end
end
