# wp-auto-update-tagui

## What's this?

The project that includes small [TagUI](https://github.com/aisingapore/TagUI) scripts to update WordPress websites.
Once you setup a configuration file (CSV format), it cruises multiple websites and updates WordPress automatically.

## Features

The script updates WordPress websites the following processes.

1. Updates all plugins (only distributed on [plugins directory](https://wordpress.org/plugins/))
1. Updates all themes (only distributed on [themes directory](https://wordpress.org/themes/))
1. Updates all language files
1. Sends execution report(s) with a short Telegram message. ([Telegram](https://telegram.org/) account required)

## Requires

-   Windows (above from Windows 10)
-   [TagUI](https://github.com/aisingapore/TagUI) - Free RPA tool by AI Singapore
-   Python3

## Recommendations

-   [Telegram](https://telegram.org/) account

## Installation and usage

Assuming TagUI is installed on `C:\tagui`.

1. Download zip file from this repository and expand (it will be appeared `wp-auto-update-tagui-master` folder)
1. Rename the folder name `wp-auto-update-tagui-master` to `wp-auto-update-tagui`
1. Setup `wp-auto-update.tag`, `error.tag` and `wp-auto-update.csv`
1. Move the folder to `C:\tagui\flows`
1. Run `wp-auto-update.bat` in the folder

## Settings

### wp-auto-update.tag and error.tag

Set the following constant if you have Telegram account.

-   TELEGRAM_ID

To get your Telegram ID, you should sent any message to TagUI bot (@taguibot). See the [TagUI documentation](https://tagui.readthedocs.io/en/latest/reference.html#telegram) for more details.

### wp-auto-update.csv

Set the following constants. Do not delete the first line of the file because it is an identifiers.

-   LOGIN_URL  
    e.g. `https://www.example.com/wp-login.php`
-   USER_LOGIN
-   USER_PASS

## Notice

-   Please use At Your Own Risk
-   The script was developed in Windows 10 (64 bit)
-   It can probably be used on macOS or Linux with reference to [TagUI documentation](https://tagui.readthedocs.io/en/latest/advanced.html#handling-exceptions-and-errors)

## Changelog

-   1.0.1 (2022-09-01)
    -   Revise `SITE_URL` constant to `LOGIN_URL`
-   1.0.0 (2022-08-22)
    -   Opening to the public

## Related repository

-   [wp-auto-update.py](https://github.com/tecking/wp-auto-update.py) - Python script to update WordPress websites
-   [wp-auto-update.rb](https://github.com/tecking/wp-auto-update.rb) - Ruby script to update WordPress websites

## License

[MIT License](https://opensource.org/licenses/mit-license.php)
