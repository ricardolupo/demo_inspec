# What does this thing do?

This is a project to demonstrate how to use Chef Workflow to promote an InSpec profile using the
prescribed stages and quality gates to ensure governance and visibility around the artifacts that manage compliance
in your organization

# Chef Workflow (Automate)

What you need to do prior:

In the `.delivery/build_cookbook/attributes/default.rb` file, you'll need to modify the
values based on your Chef Compliance Server setup

To get this project into your Workflow environment, please do the following:

1. `git clone https://github.com/ricardolupo/demo_inspec`
2. `rm -rf .git` on LINUX/MAC; `rm -Force .git` on Windows
3. `git init .`
4. `delivery init --skip-build-cookbook`
5. `git add .`
6. `git commit -m '<YOUR COMMIT MESSAGE HERE'`
7. `delivery review`

You should now see your change pop up in the Automate UI
