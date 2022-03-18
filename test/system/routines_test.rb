require "application_system_test_case"

class RoutinesTest < ApplicationSystemTestCase
  setup do
    @routine = routines(:one)
  end

  test "visiting the index" do
    visit routines_url
    assert_selector "h1", text: "Routines"
  end

  test "should create routine" do
    visit routines_url
    click_on "New routine"

    fill_in "Dance", with: @routine.dance
    fill_in "Description", with: @routine.description
    fill_in "Level", with: @routine.level
    fill_in "Song", with: @routine.song
    fill_in "Student", with: @routine.student_id
    fill_in "Style", with: @routine.style
    fill_in "Teacher", with: @routine.teacher_id
    click_on "Create Routine"

    assert_text "Routine was successfully created"
    click_on "Back"
  end

  test "should update Routine" do
    visit routine_url(@routine)
    click_on "Edit this routine", match: :first

    fill_in "Dance", with: @routine.dance
    fill_in "Description", with: @routine.description
    fill_in "Level", with: @routine.level
    fill_in "Song", with: @routine.song
    fill_in "Student", with: @routine.student_id
    fill_in "Style", with: @routine.style
    fill_in "Teacher", with: @routine.teacher_id
    click_on "Update Routine"

    assert_text "Routine was successfully updated"
    click_on "Back"
  end

  test "should destroy Routine" do
    visit routine_url(@routine)
    click_on "Destroy this routine", match: :first

    assert_text "Routine was successfully destroyed"
  end
end
