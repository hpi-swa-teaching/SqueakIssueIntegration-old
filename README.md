Squeak Issue Integration [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SqueakIssueIntegration.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SqueakIssueIntegration)
===================

This is a Issue Integration for the programming enviroment [Squeak](http://squeak.org/). It allows groups of developers to create, manage and close issues directly inside of the image. All issues are held and managed by an Issue Management System like [GitHub](https://github.com).

##How to use it

###Installation
Run the following code in the Workspace:
```smalltalk
{
Metacello new
    baseline: 'IssueIntegration';
    githubUser: 'HPI-SWA-Teaching'
    project: 'SqueakIssueIntegration'
    commitish: 'v0.1'
    path: 'packages'
}
do: [ :baseline | baseline get ];
do: [ :baseline | baseline
    onConflict: [ :ex | ex allow ];
    load: 'default' ].
```
###Set Up
Open the Issue Package Browser (Apps -> Issue Package Browser) and select the package you are working on. Enter the following information:
- **Project**: The name of your github project e.g. ```HPI-SWA-Teaching/SqueakIssueIntegration```
- **Login Key**: To authenticate you at the Issue Management System you need a OAuth-Token. You can generate one for your GitHub profile [here](https://github.com/settings/tokens) (needed scopes: "public_repo" and (if using private repositories) "repo")
- **Username**: Add your github user name
Press save

###Create an Issue
To create an Issue you can right-click on a method in the System-Browser or the Debugger and select "create Issue" in the context menu *(note: the option appears only in packages with a set up project)*. If you want to assign the issue directly to one of your team members you can enter his/her username in the Issue Creator.

###See existing issues in the System-Browser
All existing issues for a method are indicated with a little bug icon next to the method name (note: If an issue is assigned to you the bug-icon indicates this with a little sign). To close and edit them you can access all issues of this method in the context-menu of the method.

##Development
Pull Requests are welcome.
If you want to run the tests locally you have to create a method ```GitHubIssueIntegrationTest>>#setLoginKey``` like this:
```smalltalk
setLoginKey

	^self issueManagement loginKey: 'put your login key here'
```
and add your test repository to ```GitHubIssueIntegrationTest>>#setUp```.
