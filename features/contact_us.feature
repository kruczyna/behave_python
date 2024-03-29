Feature: Contact Us

	Background:
		Given I land on home screen
		And I click Contact Us button

	Scenario: I want to go to Contact Us
		Then I am on CONTACT US page

	Scenario: I want to see blank Contact Us form error
		Given I click Send button
		Then I see Invalid email address error

	Scenario: I want to see error when email is empty
		Given I input "testInput" in email field
		And I click on Contact Us body
		Then I see email input error

	Scenario: I want to see error when message is empty
		Given I input "mail@mail.com" in email field
		When I click Send button
		Then I see form error

	Scenario: I want to send out a contact us form
		Given I input "mail@mail.com" in email field
		And I input "qwerty" in message field
		And I select message subject
		When I click Send button
		Then I see form success

