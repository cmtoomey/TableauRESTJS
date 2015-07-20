# Tableau REST API Snippets for Atom

## Install
Go to `atom > Preferences...` then search for Tableau REST Snippets in the `Install` tab.

### Usage
All the snippets follow this convention
tr[activity][target]

You always want to start with trlogin. This will create the variables and login function you will need to do everything else with the API. Logout is accomplished with t-rlogout.

In the login function, there is also sample code you can re-use to extract different ID values from the API response codes. The basic syntax goes like this:

var1 = response.getElementsByTagName('item you want')[0];
var2 = var1.getAttribute('attribute')

You can find more details about the elements and attributes at http://onlinehelp.tableau.com/current/api/rest_api/en-us/help.htm#REST/rest_api_ref.htm#API_Reference%3FTocPath%3DAPI%2520Reference%7C_____0

### Snippet Convention
The items that go into [stuff] fall into a few categories, activity and target. The snippets use that basic categorization to help with finding what you want.

####Activities
- Create (c)
- Add (a)
- Delete (d)
- Update (u)
- Query (q)

####Targets
- Sites (s)
- Data Sources (d)
- File Upload (f)
- Groups (g)
- Projects (pr)
- Permissions (p)
- Users (u)

####Example
If you want to create a site: trcs.
If you want to delete a user: trdu.
The full list is below.

## License

[MIT License](http://robdodson.mit-license.org/) © Chris Toomey
