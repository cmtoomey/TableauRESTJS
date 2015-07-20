# Tableau REST API Snippets for Atom

## Install
Go to `atom > Preferences...` then search for Tableau REST Snippets in the `Install` tab.

### Usage
All the snippets follow this convention
**tr[activity][target]**

You always want to start with **trlogin**. This will create the variables and login function you will need to do everything else with the API. Logout is accomplished with **trlogout**.

In the login function, there is also sample code you can re-use to extract different ID values from the API response codes. The basic syntax goes like this:

- var1 = response.getElementsByTagName('item you want')[0];
- var2 = var1.getAttribute('attribute');

You can find more details about the elements and attributes [here](http://onlinehelp.tableau.com/current/api/rest_api/en-us/help.htm#REST/rest_api_ref.htm#API_Reference%3FTocPath%3DAPI%2520Reference%7C_____0)

### Snippet Convention
The items that go into **[activity]** and **[target]** fall into a few categories, activity and target. The snippets use that basic categorization to help with finding what you want.

####Activities
- Create (c)
- Add (a)
- Delete (d)
- Update (u)
- Query (q)
- Download (dl)
- Publish (p)

####Targets
- Sites (s)
- Data Sources (d)
- File Upload (f)
- Groups (g)
- Projects (pr)
- Permissions (p)
- Users (u)
- Workbooks (w)

####Example
If you want to create a site: 'trcs'. If you want to delete a user: 'trdu'.
The full list is below.

##Full list of functions and snippets
- Login - trlogin **
- Logout - trlogout **
1. Sites
  * Query Sites - trqss **
  * Create Site - trcs **
  * Query Site - trqs **
  * Query Site Info - trqsinfo **
  * Update Site - trus **
  * Delete Site - trds **
2. Datasources
  * Query Datasources - trqds
  * Query Datasource - trqd
  * Delete Datasource - trdd
  * Download Datasource - trdld
  * Update Datasource - trud
  * Update Datasource Connection - trudc
  * Query Datasource Connection for workbook - trqdw
  * Publish Datasource - trpd
  * File Upload Start - trsupload
  * Append to Upload - traupload
  * Publish from Upload - trpupload
3. Groups
  * Create Group - trcg
  * Query Group - trqg
  * Update Group - trug
  * Add User to Group - traug
  * Delete User from Group - trdug
4. Projects
  * Query Projects - trqpr
  * Create Project - trcpr
  * Update Project - trupr
  * Delete Project - trdpr
  * Query All Projects - trqprall
5. Users
  * Query all Users on Site - trquall
  * Add User - trau
  * Delete User - trdu
  * Workbooks owned by user - trqwxu
  * Query all Users in Group - trqug
  * Update User - truu
6. Permissions
  * Add Permissions to Datasource - trapds
  * Query Permissions for Datasource - trqpds
  * Delete Permissions to Datasource - trdpds
  * Add Permissions to Project - trappr
  * Query Permissions to Project - trqppr
  * Delete Permissions to Project - trdppr
  * Add Permissions to Workbook - trapw
  * Query Permissions for Workbook - trqpw
  * Delete Permissions for Workbook - trdpw
7. Workbooks
  * Query Workbooks for User - trqwu
  * Add Tags to Workbook - tratagw
  * Delete Tag from Workbook - trdtagw
  * Query Workbook - trqw
  * Query Workbook with Preview Image - trqwi
  * Query Views - trqwv
  * Query Views with Preview Image - trqwvi
  * Add Workbook to favorite - trawfav
  * Delete Workbook from favorite - trdwfav
  * Add View to favorite - trawvfav
  * Delete View from favorites - trdwvfav
  * Delete Workook - trdw
  * Update Workbook's Project/Owner - truw
  * Publish Workbook - trpw
  * Download Workbook - trdownw
  * Query Workbook Data Connection - trqwdata
  * Update Workbbok Data Connection - truwdata


## License

[MIT License](http://cmtoomey.mit-license.org/) © Chris Toomey
