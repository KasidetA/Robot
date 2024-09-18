*** Settings ***
Library		SeleniumLibrary

*** Keywords ***
Open url
	[Arguments]		${url}=http://www.google.com	${browser}=gc
	Open Browser	${url}		${browser}

Input search
	[Arguments]		${value}
	Input Text		id=APjFqb	${value}

Return text search
	[Arguments]		${text}
	${text_search}		Set Variable	${text}
	[Return]	${text_search}

*** Test cases ***
TC-001
	Open url
	Input search		robot