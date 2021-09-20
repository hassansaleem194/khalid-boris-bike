# Mocking Behaviour on Doubles

[Back to the Challenge Map](0_challenge_map.md)

We've isolated our tests, but now they're failing. This is happening because our `double`s can't respond to all the messages `Bike` instances can, like `broken?`.

In this challenge, you will **mock** behaviour by allowing `double`s to respond to certain methods with predefined values. These predefined method-value relationships are called **method stubs**.

### Challenge Setup

Remember our isolated test from the last challenge? It looked a bit like this:

```ruby
it 'releases working bikes' do
  # let's substitute our Bike.new
  # for a double
  subject.dock double(:bike)
  # no error yet: and no problem when
  # we release the 'bike': we just
  # get the double we made
  bike = subject.release_bike
  # a problem here: this double doesn't
  # know how to respond_to working?
  # (we'll deal with that in the next
  # challenge: mocking behaviour).
  expect(bike).to be_working
end
```

This test is failing, because the `double` doesn't know how to `respond_to` the `working?` method with the value `true`.

Let's implement that by **mocking** behaviour on the `double`:

```ruby
# let's extract the double to a let
# statement so we can use it repeatedly
let(:bike) { double :bike }
it 'releases working bikes' do
  # let's superpower our double
  # using allow().to receive().and_return()
  allow(bike).to receive(:working?).and_return(true)
  subject.dock(bike)
  released_bike = subject.release_bike
  # Now the double responds to working?
  # with the value true
  expect(released_bike).to be_working
end
```

There are ways of DRYing the above up, as well: check the Resources for more information.

### Learning Objectives covered
- Explain why method stubs are needed to isolate unit tests
- Use a method stub to isolate a unit test
- Discuss 'London' and 'Chicago' testing styles

### To complete this challenge, you will need to:

- [ ] Find the first failing test
- [ ] Note down the method that the test `double` must respond to for the test to pass
- [ ] Use RSpec's `allow` syntax to permit the double to respond to methods the test requires
- [ ] Repeat for each test
- [ ] Refactor the `allow` statements to use method stubs at the point of `double` creation (see [shorthand syntax](https://github.com/rspec/rspec-mocks#method-stubs))
- [ ] Ensure all your feature and unit tests are passing

### Hints

<details><summary>CLICK ME</summary>
  <li>Everything you need to solve this challenge step is in the materials above. Take some time before you start to make sure you understand exactly why your tests are currently failing.</li>
</details>

### Resources
- [Mocking a simple return value](https://www.relishapp.com/rspec/rspec-mocks/v/2-14/docs/method-stubs/allow-with-a-simple-return-value)
- [RSpec Method Stubs (shorthand) (Github)](https://github.com/rspec/rspec-mocks#method-stubs)

### [Walkthrough](walkthroughs/20.md)

[Previous Challenge](19_isolating_tests_with_doubles.md) | [Next Challenge](21_men_with_ven.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/20_mocking_behaviour_on_doubles.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/20_mocking_behaviour_on_doubles.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/20_mocking_behaviour_on_doubles.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/20_mocking_behaviour_on_doubles.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/20_mocking_behaviour_on_doubles.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
