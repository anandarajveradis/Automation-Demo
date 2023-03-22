Feature: Category
    Background: Login user as admin
        Given navigate to admin login page
        # Then Visual Verify
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
            | MainMenu | Submenu    |
            | Products | Categories |
        Then check page title
            | Text               |
            | Product categories |

#     Scenario: Verify label in the category page
#         Then verify following label text is visible
#             | Text            |
#             | Name            |
#             | Slug            |
#             | Parent category |
#             | Description     |
#         Then verify following button text is visible
#             | Text             |
#             | Add new category |

#     Scenario: Create a new category
#         Then enter the following input value
#             | Name            | Value                   |
#             | Name            | CYCategory1             |
#             | Slug            | cycategory1             |
#             | Parent category | None                    |
#             | Description     | CYCategory1 Description |
#         Then click the following button using id
#             | Name             |
#             | Add new category |
#         Then enter the following input value
#             | Name   | Value       |
#             | Search | CYCategory1 |
#         Then click the following button using id
#             | Name              |
#             | Search Categories |
#         Then check the admin grid column data
#             | Name | Value       |
#             | Name | CYCategory1 |
#             | Slug | cycategory1 |

#     Scenario: Edit the category
#         Then enter the following input value
#             | Name   | Value       |
#             | Search | CYCategory1 |
#         Then click the following button using id
#             | Name              |
#             | Search Categories |
#         Then check the admin grid column data
#             | Name | Value       |
#             | Name | CYCategory1 |
#             | Slug | cycategory1 |
#         Then click the admin grid column data
#             | Name | Value       |
#             | Name | CYCategory1 |
#         Then enter the following input value
#             | Name                 | Value                    |
#             | Edit Name            | CYCategory11             |
#             | Edit Slug            | cycategory11             |
#             | Edit Parent category | None                     |
#             | Edit Description     | CYCategory11 Description |
#         Then click following button text
#             | Text   |
#             | Update |
#         Then click following link text
#             | Text             |
#             | Go to Categories |

#     Scenario: Verify the edit the category
#         Then enter the following input value
#             | Name   | Value        |
#             | Search | CYCategory11 |
#         Then click the following button using id
#             | Name              |
#             | Search Categories |
#         Then check the admin grid column data
#             | Name | Value        |
#             | Name | CYCategory11 |
#             | Slug | cycategory11 |

#     Scenario: Delete the category
#         Then enter the following input value
#             | Name   | Value        |
#             | Search | CYCategory11 |
#         Then click the following button using id
#             | Name              |
#             | Search Categories |
#         Then check the admin grid column data
#             | Name | Value        |
#             | Name | CYCategory11 |
#             | Slug | cycategory11 |
#         Then delete row using following grid column
#             | Name | Value       |
#             | Name | CYCategory1 |

#     Scenario: check number exist in the list <row>
#         Given check number exist in list of numbers

#         Examples:
#             | row |
#             | 1   |
#             | 2   |
#             | 3   |
#             | 4   |
#             | 5   |
