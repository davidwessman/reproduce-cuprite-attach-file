require "application_system_test_case"

class BugTest < ApplicationSystemTestCase
  test "attach_file bug" do
    visit(new_bug_path)
    find("#bug_file").attach_file("./test.jpg")

    click_on("Create Bug")
    find("div", text: "File size: 17802")
  end
end
