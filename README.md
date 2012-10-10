# Snifter

Can we use twitter to automatically monitor user feedback in a useful way?

## Setup

Twitter requires both application and user credentials to use to it's API. To create them go to:

https://dev.twitter.com/apps

and click on 'Create a new application', name it etc. Once complete copy the tokens into the credentials.yml file.

If you build and install the gem then it expects a valid credentials file in your $HOME directory named .snifter. You can copy the credentials.yml there. It's probably best to then chmod the file so only you have read access

    chmod 600 ~/.snifter

## License

Released under the MIT License. Please see the accompanying [LICENSE](LICENSE) document for
details.
