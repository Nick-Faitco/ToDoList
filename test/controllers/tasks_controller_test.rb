require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tasks_index_url
    assert_response :success
  end

  test "should get show" do
    get tasks_show_url
    assert_response :success
  end

  test "should get new" do
    get tasks_new_url
    assert_response :success
  end

  test "should create task" do
    assert_difference("Task.count") do
      post tasks_path, params: { task: { title: "New Task", description: "Test", completion_status: "Pending" } }
    end
    assert_redirected_to home_index_path
  end

  test "should get edit" do
    task = tasks(:one)
    get tasks_edit_path(task.id)
    assert_response :success
  end

  test "should update task" do
    task = tasks(:one)
    patch task_path(task), params: {task: {title: "updated Title" } }
    assert_redirected_to home_index_path
  end

  test "should get destroy" do
    task = tasks(:one)
    assert_difference("Task.count", -1) do
      delete task_path(task)
    end
      assert_redirected_to home_index_url
  end
end
