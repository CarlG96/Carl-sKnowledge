Here are a list of test double types and their uses:

## Dummy

A type of test double that is never used but is merely there to fill parameter lists. Usually because of a requirement in the real code that is useless for the current test. Test dummies aren't used in tests.

## Fake

Fakes are more advanced than dummies, in that they do have some functionality. However the functionality will be similar but not exactly how the real world version would work. For example, if a method retrieves data from a database, but you only care that the call was made instead of state testing the database, you might use a fake database to speed up your test to see if the call was made.

## Stubs and spies

Stubs are test doubles that provide canned answers when called upon. Spies are more advanced stubs in that they will respond with specific information when called upon. For example, a stub might console log "Hello world!" whereas a spy might console log "x number of records in the database!".

## Mocks

Mocks are used in behaviour testing to verify that they were called upon. This is very useful for London School TDD as it allows you to ensure that the structure of your code is as intended, preventing the problem where a state test passes by bypassing the correct procedures.