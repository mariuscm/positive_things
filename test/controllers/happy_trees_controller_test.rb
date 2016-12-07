require 'test_helper'

class HappyTreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @happy_tree = happy_trees(:one)
  end

  test "should get index" do
    get happy_trees_url
    assert_response :success
  end

  test "should get new" do
    get new_happy_tree_url
    assert_response :success
  end

  test "should create happy_tree" do
    assert_difference('HappyTree.count') do
      post happy_trees_url, params: { happy_tree: { background: @happy_tree.background, brush: @happy_tree.brush, color: @happy_tree.color, desc: @happy_tree.desc } }
    end

    assert_redirected_to happy_tree_url(HappyTree.last)
  end

  test "should show happy_tree" do
    get happy_tree_url(@happy_tree)
    assert_response :success
  end

  test "should get edit" do
    get edit_happy_tree_url(@happy_tree)
    assert_response :success
  end

  test "should update happy_tree" do
    patch happy_tree_url(@happy_tree), params: { happy_tree: { background: @happy_tree.background, brush: @happy_tree.brush, color: @happy_tree.color, desc: @happy_tree.desc } }
    assert_redirected_to happy_tree_url(@happy_tree)
  end

  test "should destroy happy_tree" do
    assert_difference('HappyTree.count', -1) do
      delete happy_tree_url(@happy_tree)
    end

    assert_redirected_to happy_trees_url
  end
end
