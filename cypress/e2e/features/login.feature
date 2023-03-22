Feature: Login
    Scenario: Login user with correct email and password
        Given navigate to admin login page
        Then verify following label text is visible
            | Text                      |
            | Username or Email Address |
            | Password                  |
            | Remember Me               |
        Then verify following button text is visible
            | Text   |
            | Log In |
        Then verify following link text is visible
            | Text                |
            | Register            |
            | Lost your password? |
        Then enter the following input value
            | Name                      | Value   |
            | Username or Email Address | admin   |
            | Password                  | veradis |
        Then click the following button using id
            | Name   |
            | Log In |
        Then check page title
            | Text      |
            | Dashboard |
        Then verify following username is visible
            | Text  |
            | admin |
        Then check following admin menu is visible
            | Text      |
            | Dashboard |
            | Posts     |
            | Media     |
            | Comments  |
            | Pages     |
            | Users     |
            | Tools     |
            | Settings  |
        Then click on logout

    Scenario: Login user with invalid email and password
        Given navigate to admin login page
        Then verify following label text is visible
            | Text                      |
            | Username or Email Address |
            | Password                  |
            | Remember Me               |
        Then verify following button text is visible
            | Text   |
            | Log In |
        Then verify following link text is visible
            | Text                |
            | Register            |
            | Lost your password? |
        Then enter the following input value
            | Name                      | Value    |
            | Username or Email Address | admin    |
            | Password                  | veradis1 |
        Then click the following button using id
            | Name   |
            | Log In |
        Then verify following error message is visible
            | Text  |
            | Error |

    Scenario: check number exist in the list <row>
        Given check number exist in list of numbers

        Examples:
            | row |
            | 1   |
            | 2   |
            | 3   |
            | 4   |
            | 5   |
