# @template simplenergy_test:room
# @environment simplenergy_test:loaded
# @dummy ~ ~ ~
# @timeout 200
await score #simplenergy.loaded load.status matches 1

assert score #dependency_error simplenergy.data matches 0
assert score #mcload_error simplenergy.data matches 0
