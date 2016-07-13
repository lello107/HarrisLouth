# HarrisLouth

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/HarrisLouth`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'HarrisLouth'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install HarrisLouth


    
# STANDARD PLAYLIST FORMAT
# The standard playlist (log) file format is a file of fixed length records of 104 bytes.
# All data fields are left justified. When an ASCII field is partially filled, the unused bytes should be filled with spaces (20H).
# Data fields not used should be filled with the NULL character indicated. 
# The ID field should not be left blank, if blank it should be filled with FFH.
# The title field when blank should be filled with 20H.
# 
# 
# 
# EVENT TYPES
# The type of event is specified in standard events.
# the first byte. The following are the current values for
# 00H Primary or Normal event.
# Used for both single and multi-segment (program) events. These events constitute the primary on air event in the automation.
# 
# 10H Break event. 
# Stops list from running. It is also possible to use the EVENTCONTROL field in a primary event to stop the list from running using MANUALSTART bit.
#
# The following are Secondary Events, events attached to a primary event. These events run based on a offset from the primary event.
# Backtimed events can run before the primary events, all others run offset from the primary event.
# 
# 80H Secondary Audio/Video event# 
# Allows for running an audio/video device as a secondary. OAFRAME, OASEC, OAMIN, and OAHOUR specify offset of the event from the primary event.
# A transition effect can be specified. Use # EVENTCONTROL to allow this event to be switched or not switched when run (remove AUTOSWITCH if no switching).
# 
# 83H Key event
# Put in a key using OAFRAME, OASEC, OAMIN, and OAHOUR as on offset from primary. DUR may be specified or else stays on until next transition.
# A transition effect can be specified.
# 
# 84H Transition Key event# 
# Used when the key is to be brought on with the primary events transition. No offset is specified; DUR may be specified or else stays on until next transition.
# Key is transitioned on with # the same effect as the primary. A transition effect can be specified which will be used to transition off the key.
# 
# 85H Secondary Backtimed event
# Allows for running an audio/video device as a secondary event backtimed from the primary. OAFRAME, OASEC, OAMIN, and OAHOUR specify offset of the event.
# A transition effect can be specified. 
# Use the eventcontrol to allow this event to be switched or not switched when run (remove AUTOSWITCH if no switching).
# 
# 88H Backtimed GPI closure event
# OAFRAME, OASEC, OAMIN, OAHOUR is backtimed offset from beginning. DUR is actual pulse duration.
# 
# 89H GPI Closure event
# OAFRAME, OASEC, OAMIN, OAHOUR is offset from beginning, DUR is actual pulse duration.
# 
# 90H Trans Audio event
# No offset is specified. 
# DUR may be specified or else stays on until next transition.
# Audio over is transitioned on with the same effect as the primary. 
# A transition effect can be specified which will be used to transition off the audio.
# 
# 91H Audio Over event# 
# Turn on audio over using OAFRAME, OASEC, OAMIN, and OAHOUR as on offset. DUR may be specified or else stays on until next transition.
# A transition effect can be specified which will be # used to transition on the audio as well as transition the audio off.
# 
# A0H Secondary Data event
# Supply data to a device. OAFRAME, OASEC, OAMIN, and OAHOUR specify the offset of the event.
# This event is device specific.
# Please refer to the ADC100 documentation for its usage.
# 
# A4H Secondary Resource Assignment event
# Supply commands to the list. OAFRAME, OASEC, OAMIN, and OAHOUR specify the offset of the event.
# This event is used currently only by the playlists.
# Please refer to the ADC100 documentation for its usage.
# 
# A5H Backtimed Secondary Resource Assignment event
# Supply commands to the list. OAFRAME, OASEC, OAMIN, and OAHOUR specify the backtimed offset of the event.
# This event is used currently only by the playlists.
# Please refer to the ADC100 documentation for its usage.
# 
# B0H Secondary Record Switch event
# This event allows a primary record event to have the switching changed. OAFRAME, OASEC, OAMIN, and OAHOUR specify the offset of the event.
# Duration is not needed.
# The title field should contain the Source name as specified in the setup of the switcher being used for the recording.

## Usage
# Convert a xml Disney file to Harris automation playlist (.lst) 
#	lst extended id/title are supported 
#	List of events type accepted:
#		
#
#
def self.xml_to_lst(file_xml_path,file_lst_path, options={})
end

HarrisLouth.xml_to_lst("/Users/lello107/Downloads/DCMpp22072013v10.xml","/Volumes/Users-1/Xstudio/Downloads/prova.lst",{:type=>0, :segment_programs=>true,:abox_converted=>false,:bbox_converted=>false})

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/HarrisLouth/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
