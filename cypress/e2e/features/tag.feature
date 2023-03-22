Feature: Tag
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
        Then click the following admin menu
            | MainMenu | Submenu |
            | Products | Tags    |
        Then check page title
            | Text         |
            | Product tags |

    Scenario: Verify label in the tag page
        Then verify following label text is visible
            | Text        |
            | Name        |
            | Slug        |
            | Description |
        Then verify following button text is visible
            | Text        |
            | Add new tag |

    Scenario: Create a new tag
        Then enter the following input value
            | Name        | Value              |
            | Name        | CYTag1             |
            | Slug        | cytag1             |
            | Description | CYTag1 Description |
        Then click the following button using id
            | Name             |
            | Add new category |
        Then enter the following input value
            | Name   | Value  |
            | Search | CYTag1 |
        Then click the following button using id
            | Name        |
            | Search Tags |
        Then check the admin grid column data
            | Name | Value  |
            | Name | CYTag1 |
            | Slug | cytag1 |

    Scenario: Edit the tag
        Then enter the following input value
            | Name   | Value  |
            | Search | CYTag1 |
        Then click the following button using id
            | Name        |
            | Search Tags |
        Then check the admin grid column data
            | Name | Value  |
            | Name | CYTag1 |
            | Slug | cytag1 |
        Then click the admin grid column data
            | Name | Value  |
            | Name | CYTag1 |
        Then enter the following input value
            | Name             | Value               |
            | Edit Name        | CYTag11             |
            | Edit Slug        | cytag11             |
            | Edit Description | CYTag11 Description |
        Then click following button text
            | Text   |
            | Update |
        Then click following link text
            | Text       |
            | Go to Tags |

    Scenario: Verify the edited tag
        Then enter the following input value
            | Name   | Value   |
            | Search | CYTag11 |
        Then click the following button using id
            | Name        |
            | Search Tags |
        Then check the admin grid column data
            | Name | Value   |
            | Name | CYTag11 |
            | Slug | cytag11 |

    Scenario: Delete the tag
        Then enter the following input value
            | Name   | Value   |
            | Search | CYTag11 |
        Then click the following button using id
            | Name              |
            | Search Categories |
        Then check the admin grid column data
            | Name | Value   |
            | Name | CYTag11 |
            | Slug | cytag11 |
        Then delete row using following grid column
            | Name | Value   |
            | Name | CYTag11 |

    Scenario: check number exist in the list <row>
        Given check number exist in list of numbers

        Examples:
            | row |
            | 1   |
            | 2   |
            | 3   |
            | 4   |
            | 5   |
