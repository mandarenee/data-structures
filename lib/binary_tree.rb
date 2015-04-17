class BinaryTree
  attr_accessor :list, :manager, :report1, :report2

  def initialize(manager, report1, report2)
    @manager = manager
    @report1 = report1
    @report2 = report2
    @list = []
  end

  def preorder(management)
    return if management.report1.nil?
    @list << management.manager
    preorder(management.report1)
    @list << management.report1.manager if management.report1.report1.nil?
    preorder(management.report2)
    @list << management.report2.manager if management.report2.report2.nil?
  end

  def in_order(management)
    return if management.report1.nil?
    @list << management.report1.manager if management.report1.report1.nil?
    in_order(management.report1)
    @list << management.manager
    in_order(management.report2)
    @list << management.report2.manager if management.report2.report2.nil?
  end

  def post_order(management)
    return if management.report1.nil?
    @list << management.report1.manager if management.report1.report1.nil?
    post_order(management.report1)
    post_order(management.report2)
    @list << management.report2.manager if management.report2.report2.nil?
    @list << management.manager
  end
end
