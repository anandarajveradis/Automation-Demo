Feature: User
    Background: Login user as admin
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

    Scenario: Verify label in the post page
        Then click the following admin menu
            | MainMenu | Submenu |
            | Users    | Add New |
        Then check page title
            | Text         |
            | Add New User |
        Then verify following label text is visible
            | Text                                            |
            | Username                                        |
            | Email                                           |
            | First Name                                      |
            | Last Name                                       |
            | Website                                         |
            | Password                                        |
            | Send the new user an email about their account. |
            | Role                                            |


    Scenario: Create a new user
        Then click the following admin menu
            | MainMenu | Submenu |
            | Users    | Add New |
        Then check page title
            | Text         |
            | Add New User |
        Then enter the following input value
            | Name       | Value                  |
            | Username   | CYUser1                |
            | Email      | cyuser@gmail.com       |
            | First Name | CYUser1 First Name     |
            | Last Name  | CYUser1 last Name      |
            | Website    | CYUser1 WWW.google.com |
            | Role       | Subscriber             |
        Then click following button
            | Text              |
            | Generate password |
        Then click the following button using id
            | Name         |
            | Add New User |
        Then enter the following input value
            | Name      | Value   |
            | User Grid | CYUser1 |
        Then click the following button using id
            | Name            |
            | Search products |
        Then check the admin grid column data
            | Name     | Value   |
            | Username | CYUser1 |

    Scenario: Edit a user
        Then click the following admin menu
            | MainMenu |
            | Users    |
        Then check page title
            | Text  |
            | Users |
        Then enter the following input value
            | Name      | Value   |
            | User Grid | CYUser1 |
        Then click the following button using id
            | Name            |
            | Search products |
        Then click the admin grid column data
            | Name     | Value   |
            | Username | CYUser1 |
        Then enter the following input value
            | Name       | Value                      |
            | Email      | cyedituser@gmail.com       |
            | First Name | CYEditUser1 First Name     |
            | Last Name  | CYEditUser1 last Name      |
            | Website    | CYEditUser1 WWW.google.com |
        Then click following button text
            | Text        |
            | Update User |
        Then click following link text
            | Text        |
            | Go to Users |

    Scenario: Verify the edited user
        Then click the following admin menu
            | MainMenu |
            | Users    |
        Then check page title
            | Text  |
            | Users |
        Then enter the following input value
            | Name      | Value   |
            | User Grid | CYUser1 |
        Then click the following button using id
            | Name            |
            | Search products |
        Then check the admin grid column data
            | Name     | Value   |
            | Username | CYUser1 |

    Scenario: Delete the user
        Then click the following admin menu
            | MainMenu |
            | Users    |
        Then check page title
            | Text  |
            | Users |
        Then enter the following input value
            | Name      | Value   |
            | User Grid | CYUser1 |
        Then click the following button using id
            | Name            |
            | Search products |
        Then check the admin grid column data
            | Name     | Value   |
            | Username | CYUser1 |
        Then delete row using following grid column
            | Name     | Value   |
            | Username | CYUser1 |
        Then click the following button using id
            | Name        |
            | Delete User |





