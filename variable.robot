*** Settings ***
Library		SeleniumLibrary
Resource	./keywords/keywords.robot

*** Variables ***
${search}			robot
${search2}			framwork
@{list_search}		robot	framework
&{dict_value}		url_google=http://www.google.com	search_robot=robot


*** Test cases ***
TC-001
	Open url			${dict_value}[url_google]
	Input search		${dict_value['search_robot']}
