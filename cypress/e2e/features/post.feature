Feature: Post
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
            | Posts    | Add New |
        Then check page title
            | Text         |
            | Add New Post |
        Then verify following button text is visible
            | Text    |
            | Publish |

    Scenario: Create a new posts
        Then click the following admin menu
            | MainMenu | Submenu |
            | Posts    | Add New |
        Then check page title
            | Text         |
            | Add New Post |
        Then enter the following input value
            | Name      | Value     |
            | PostTitle | Test Post |
        Then click the following button using id
            | Name    |
            | Publish |
        Then click the following admin menu
            | MainMenu | Submenu   |
            | Posts    | All Posts |
        Then enter the following input value
            | Name        | Value     |
            | Search Grid | Test Post |
        Then click the following button using id
            | Name         |
            | Search Posts |
        Then check the admin grid column data
            | Name  | Value     |
            | Title | Test Post |

    Scenario: Edit a posts
        Then click the following admin menu
            | MainMenu | Submenu   |
            | Posts    | All Posts |
        Then click the admin grid column data
            | Name  | Value     |
            | Title | Test Post |
        Then enter the following input value
            | Name            | Value     |
            | Edit Post Title | Edit Post |
        Then verify following button text is visible
            | Text   |
            | Update |
        Then click the following button using id
            | Name   |
            | Update |
        Then click the following admin menu
            | MainMenu | Submenu   |
            | Posts    | All Posts |
        Then check the admin grid column data
            | Name  | Value     |
            | Title | Edit Post |


    Scenario: Delete a posts
        Then click the following admin menu
            | MainMenu | Submenu   |
            | Posts    | All Posts |
        Then enter the following input value
            | Name        | Value     |
            | Search Grid | Edit Post |
        Then click the following button using id
            | Name         |
            | Search Posts |
        Then check the admin grid column data
            | Name  | Value     |
            | Title | Edit Post |
        Then trash row using following grid column
            | Name  | Value     |
            | Title | Edit Post |

