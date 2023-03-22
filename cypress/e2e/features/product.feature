Feature: Product
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
    Scenario: Verify label in the product page
        Then click the following admin menu
            | MainMenu | Submenu |
            | Products | Add New |
        Then check page title
            | Text            |
            | Add new product |
        Then verify following label text is visible
            | Text                |
            | Product description |
        Then verify following h2 text is visible
            | Text                      |
            | Product data              |
            | Product short description |
            | Product image             |
            | Product gallery           |
            | Product tags              |
            | Product categories        |

    Scenario: Create a product
        Then click the following admin menu
            | MainMenu | Submenu |
            | Products | Add New |
        Then check page title
            | Text            |
            | Add new product |
        Then enter the following input value
            | Name                | Value                   |
            | Product Name        | CY Product1             |
            | Product description | CY Product Description1 |
        Then click the following menu in product data section
            | Text    |
            | General |
        Then enter the following input value
            | Name          | Value |
            | Regular Price | 20    |
        Then click the following menu in product data section
            | Text      |
            | Inventory |
        Then enter the following input value
            | Name           | Value    |
            | SKU            | CYSKU001 |
            | Manage Stock   | true     |
            | Stock Quantity | 25       |
        Then click following link by id
            | Name              |
            | Set product image |
        Then check page title
            | Text          |
            | Product image |
        Then verify following button is visible
            | Text              |
            | Set product image |
        Then enter the following input value
            | Name         | Value      |
            | Media Search | logo-1.jpg |
        Then click on following image in image gallery
            | Text       |
            | logo-1.jpg |
        Then click following button
            | Text              |
            | Set product image |
        Then enter the following input value
            | Name         | Value  |
            | Product tags | CYTags |
            | Product tags | Enter  |
        Then click on label text
            | Text        |
            | testProduct |
        Then click the following button using id
            | Name    |
            | Publish |

    Scenario: Edit the product
        Then click the following admin menu
            | MainMenu |
            | Products |
        Then enter the following input value
            | Name        | Value       |
            | Search Grid | CY Product1 |
        Then click the following button using id
            | Name            |
            | Search products |
        Then check the admin grid column data
            | Name | Value       |
            | Name | CY Product1 |
        Then click the admin grid column data
            | Name | Value       |
            | Name | CY Product1 |
        Then enter the following input value
            | Name                | Value                           |
            | Product Name        | CY Product1 Updated             |
            | Product description | CY Product Description1 Updated |
        Then click the following menu in product data section
            | Text    |
            | General |
        Then enter the following input value
            | Name          | Value |
            | Regular Price | 40    |
        Then click the following menu in product data section
            | Text      |
            | Inventory |
        Then enter the following input value
            | Name           | Value |
            | Stock Quantity | 45    |
        Then click following link by id
            | Name                 |
            | Remove product image |
        Then click following link by id
            | Name              |
            | Set product image |
        Then check page title
            | Text          |
            | Product image |
        Then verify following button is visible
            | Text              |
            | Set product image |
        Then verify following button is visible
            | Text              |
            | Set product image |
        Then enter the following input value
            | Name         | Value           |
            | Media Search | clothing1-6.png |
        Then click on following image in image gallery
            | Text      |
            | clothing1 |
        Then click following button
            | Text              |
            | Set product image |
        Then enter the following input value
            | Name         | Value   |
            | Product tags | CYTags1 |
            | Product tags | Enter   |
        Then click the following button using id
            | Name   |
            | Update |

    Scenario: Verify the updated product
        Then click the following admin menu
            | MainMenu |
            | Products |
        Then enter the following input value
            | Name        | Value               |
            | Search Grid | CY Product1 Updated |
        Then click the following button using id
            | Name            |
            | Search products |
        Then check the admin grid column data
            | Name | Value               |
            | Name | CY Product1 Updated |

    Scenario: Delete the product
        Then click the following admin menu
            | MainMenu |
            | Products |
        Then enter the following input value
            | Name        | Value               |
            | Search Grid | CY Product1 Updated |
        Then click the following button using id
            | Name            |
            | Search products |
        Then check the admin grid column data
            | Name | Value               |
            | Name | CY Product1 Updated |
        Then trash row using following grid column
            | Name | Value               |
            | Name | CY Product1 Updated |

    Scenario: check number exist in the list <row>
        Given check number exist in list of numbers

        Examples:
            | row |
            | 1   |
            | 2   |
            | 3   |
            | 4   |
            | 5   |
