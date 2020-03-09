Feature: test more

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: add new movie to database
  When I am on the home page
  When  I follow "Add new movie"
  And  I fill in "Director" with "test director"
  And  I fill in "Title" with "Warship"
  And  I press "Save Changes"
  Then the director of "Warship" should be "test director"
