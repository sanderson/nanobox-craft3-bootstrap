# Craft CMS 3 Bootstrap with Nanobox

This repo contains the files and templates necessary to bootstrap a brand new Craft CMS 3 project using [Nanobox](https://nanobox.io).

## Download & Install Nanobox
If you haven't already, [create a free Nanobox account](https://dashboard.nanobox.io/users/register) and [download and install Nanobox](https://dashboard.nanobox.io/download).

## Create a New Project Directory and Run the Bootstrap
```bash
# create a new project directory and cd in
mkdir craft3 && cd $_

# run the bootstrap
bash <(curl -sL https://git.io/v7Twg)
```

## That's It!
The bootstrap will provision a dev environment, install Craft, and start the server. You'll find the IP and port where you can see the running app in the output.

---

## Add a DNS Alias
Nanobox lets you easily add a convenient way to access your Craft app from the browser. To add a DNS alias, run the following from the root of your project _(outside the Nanobox console)_.

```bash
nanobox dns add local craft.dev
```

After you `nanobox run php-server`, you'd be able to access the running app at `http://craft.dev`.

## Building Out the Project
Once the project is bootstrapped, building it out is really simple.

### Development
To fire up the app's dev environment and drop into a console in the environment, just run:

```bash
nanobox run
```

Your local codebase is mounted into the dev container. Any changes to the code are reflected in your dev app. You can add and load dependencies or any other dev tasks. Or you can simply start Craft.

```bash
php-server
```

### Deployment
1. [Create a new app in your Nanobox dashboard](https://docs.nanobox.io/workflow/launch-app/)
2. Add your new app as a remote on your project:
    ```bash
    nanobox remote add app-name
    ```
3. Deploy to your live app:
    ```bash
    nanobox deploy
    ```
