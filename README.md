# OmniAuth WorkMate

This is the OmniAuth strategy for authenticating to WorkMate.

## Basic Usage

    use OmniAuth::Builder do
      provider :workmate, ENV['WORKMATE_KEY'], ENV['WORKMATE_SECRET']
    end