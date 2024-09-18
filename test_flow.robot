*** Settings ***
Library		SeleniumLibrary
Resource	./keywords/keywords.robot

#Suite Setup    Run before first test
#Suite Teardown Run after last test
#Test Setup     Run before start each test.
#Test Teardown  Run after end each test.
Test Setup         Open url
Test Teardown      Close Browser



*** Variables ***
${search}			robot



*** Test cases ***
TC-001		
	Input search		${search}
    Sleep   5s

TC-002		
	Input search		${search}
    Sleep   5s