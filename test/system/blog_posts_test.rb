require "application_system_test_case"

class BlogPostsTest < ApplicationSystemTestCase
  setup do
    @blog_post = blog_posts(:one)
  end

  test "visiting the index" do
    visit blog_posts_url
    assert_selector "h1", text: "Blog posts"
  end

  test "should create blog post" do
    visit blog_posts_url
    click_on "New blog post"

    fill_in "Author", with: @blog_post.author_id
    fill_in "Body", with: @blog_post.body
    fill_in "Summary", with: @blog_post.summary
    fill_in "Tags", with: @blog_post.tags
    fill_in "Title", with: @blog_post.title
    click_on "Create Blog post"

    assert_text "Blog post was successfully created"
    click_on "Back"
  end

  test "should update Blog post" do
    visit blog_post_url(@blog_post)
    click_on "Edit this blog post", match: :first

    fill_in "Author", with: @blog_post.author_id
    fill_in "Body", with: @blog_post.body
    fill_in "Summary", with: @blog_post.summary
    fill_in "Tags", with: @blog_post.tags
    fill_in "Title", with: @blog_post.title
    click_on "Update Blog post"

    assert_text "Blog post was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog post" do
    visit blog_post_url(@blog_post)
    click_on "Destroy this blog post", match: :first

    assert_text "Blog post was successfully destroyed"
  end
end
