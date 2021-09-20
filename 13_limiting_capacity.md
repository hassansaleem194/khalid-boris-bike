# Limiting Capacity

[Back to the Challenge Map](0_challenge_map.md)

Our program now raises an exception when we try to `#release_bike` from a `DockingStation` instance with no bikes docked.

Our next User Story requires us to do a similar thing when the Docking Station is full:

```
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.
```

In this challenge, you will raise an exception when a user attempts to dock a bike at a `DockingStation` that already contains a bike (i.e. with a capacity of 1). Scaffolding has been removed, but the steps are similar to [Challenge 12](12_raising_exceptions.md).

### Learning Objectives covered
- Write RSpec tests that `expect` errors
- Use `fail` or `raise` to raise an error
- Use a 'guard condition'

### To complete this challenge, you will need to:

- [ ] Deliver the feature above in a Test-Driven manner

### Hints

<details><summary>CLICK ME</summary>
  <li>We now want to set a limit on the number of Bikes a DockingStation can hold, but right now we don't know what that limit should be.  For now, lets keep things simple and assume that the limit should be one Bike.  Run a feature test which expects an error when trying to dock a Bike in a DockingStation which already contains one.</li>
  <li>No error - no surprises there.  Now write a matching unit test - this is likely to look similar to the test you wrote in the last step.  Once you have a failing test, get it to pass!</li>
</details>

### Resources

- [RSpec errors documentation (Github)](https://github.com/rspec/rspec-expectations#expecting-errors)
- [Relish errors documentation](http://www.relishapp.com/rspec/rspec-expectations/v/3-3/docs/built-in-matchers/raise-error-matcher)

### [Walkthrough](walkthroughs/13.md)

[Previous Challenge](12_raising_exceptions.md) | [Next Challenge](14_complex_attributes.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/13_limiting_capacity.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/13_limiting_capacity.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/13_limiting_capacity.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/13_limiting_capacity.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/13_limiting_capacity.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
