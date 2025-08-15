require "test_helper"

class TaskTest < ActiveSupport::TestCase
 test "should not save task with missing user input" do
   task = Task.new
   assert_not task.save
 end
end
