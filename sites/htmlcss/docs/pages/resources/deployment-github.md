<style>
img {
    border: 1px solid gray;
    border-radius: 10px !important;
    box-shadow: rgba(0, 0, 0, 0.25) 2px 2px 4px;
}
</style>

# Deploying to GitHub Pages
GitHub is a platform for software developers to store their code. The code that is stored is placed in what is called **repositories**. In this guide you will learn how to:

- Create a GitHub repository
- Store your website code in the repository
- Deploy the repository as a website using GitHub pages
- Navigate to your deployed website

This guide assumes you have [created a GitHub account](https://github.com/signup) and have [logged in](https://github.com/login).

## Creating a GitHub Repository
### Visit [https://github.com/](https://github.com/)
Open the GitHub website in your web browser (Chrome, Edge, FireFox, etc...)

### Click the `Create new...` button at the top of the screen
![Create Repository Button](../../assets/deploy-github/create-repo-button.png)

### Select the `New repository` option
![Select New Repository Button](../../assets/deploy-github/create-repo-option.png)

### Fill in the repository form
You need to give your repository a name and enable the `Add README` option (**this is important, if you do not enable this option you will not be able to upload files**).
![Create Repository Fields](../../assets/deploy-github/create-repo-fields.png)

If you have followed these steps correctly you should see a repository with a single file in it called `README.md`:
![Repository with README.md file](../../assets/deploy-github/readme-file.png)

## Uploading Site Files
### Click the `Add file` button
![Add file button](../../assets/deploy-github/add-file-button.png)

### Select the `Upload files` option
![Upload files option](../../assets/deploy-github/upload-files-option.png)

### Click the `choose your files` link
![Choose files link](../../assets/deploy-github/choose-files-link.png)

### Select the website files you have created in a previous activity
Select any `index.html` and other `html` files you created in a previous activity and click the `open` button.
!!! This probably needs a screenshot !!!

### Click the `Commit changes` button to upload the files
![Commit changes button](../../assets/deploy-github/commit-changes-button.png)

If you have done these steps correctly you should see your files uploaded to your repository:
![Site files in repository](../../assets/deploy-github/site-files.png)

## Deploying to GitHub Pages
### Click on the `Settings` tab in the navigation bar
![Settings tab button](../../assets/deploy-github/settings-tab-button.png)

### Click on the `Pages` tab in the sidebar navigation
![Pages sidebar tab button](../../assets/deploy-github/pages-tab-button.png)

### Click on the `Branch` drop-down menu
![Branch dropdown button](../../assets/deploy-github/branch-dropdown.png)

### Select the `main` branch
![Branch main option](../../assets/deploy-github/branch-dropdown-option.png)

### Click on the `Save` button
![Branch save button](../../assets/deploy-github/branch-save-button.png)

## Viewing your Deployed Website
### Click on the `Actions` tab in the navigation bar
![Actions tab button](../../assets/deploy-github/actions-tab-button.png)

### Wait for the action to complete
You will need to wait for the website to be deployed by GitHub, you will know when it is complete when the action changes from **orange** to **green**.

![Action running](../../assets/deploy-github/action-running.png)
![Action completed](../../assets/deploy-github/action-completed.png)

### Click on the action name
This will take you to the completed action (the GitHub deployment)
![Action completed link](../../assets/deploy-github/action-completed-link.png)

### Click on your deployed pages link
![Deployment link](../../assets/deploy-github/deployment-link.png)

If you have done the steps correctly you should see the website that you made in a previous activity show up (your website may look different to mine):

![Choose files link](../../assets/deploy-github/site-preview.png)

If you do see your website then your site is now live and you can share your website link with your peers and visit it from any computer / network with an internet connection.

## Troubleshooting
### I only see the name of my repository with an empty site
![Choose files link](../../assets/deploy-github/site-preview-no-index.png)

Make sure you have a `html` file in your repository named `index.html`. If you do not have this file, then the web browser does not know how to get to your page. 

Remember: Web browser look for the `index.html` file by default when you do not specify a page in the address bar.

