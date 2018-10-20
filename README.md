# kele
Kele is Ruby Gem API client to access the Bloc API.
## Installing

```
gem install kele

```
## Usage
### Retrieving the current user

```
$ irb
>> require './lib/kele'
=> true
>> kele_client = Kele.new("example@gmail.com", "abc123")
>> kele_client.get_me
$ irb
>> require './lib/kele'
=> true
>> kele_client = Kele.new("example@gmail.com", "abc123")
>> kele_client.get_me

```
### Retrieving a list of a mentor's available time slots for the current user
```
$ irb
>> require './lib/kele'
=> true
>> kele_client = Kele.new("example@gmail.com", "abc123")
>> mentor_id = 99
>> kele_client.get_mentor_availability(mentor_id)
```
### Retrieving Roadmaps
```
$ irb
>> require './lib/kele'
=> true
>> kele_client = Kele.new("example@gmail.com", "abc123")
>> chain_id = 99
>> kele_client.get_roadmap(chain_id)
```
### Retrieving Checkpoints
```
$ irb
>> require './lib/kele'
=> true
>> kele_client = Kele.new("example@gmail.com", "abc123")
>> checkpoint_id = 99
>> kele_client.get_checkpoint(checkpoint_id)
```
### Retrieving Messages
```
$ irb
>> require './lib/kele'
=> true
>> kele_client = Kele.new("example@gmail.com", "abc123")
>> kele_client.get_messages(1) # returns the first page of message threads
>> kele_client.get_messages # returns all message thread
```
### Retrieving information about remaining checkpoints
```
$ irb
>> require './lib/kele'
=> true
>> kele_client = Kele.new("example@gmail.com", "abc123")
>> kele_client.get_remaining_checkpoints(chain_id)
```
### Retrieving current user's program information
```
$ irb
>> require './lib/kele'
=> true
>> kele_client = Kele.new("example@gmail.com", "abc123")
>> kele_client.program_info
```
