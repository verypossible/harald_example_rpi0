# Harald Example Raspberry Pi 0 W

## Burning an Image

1. `export MIX_TARGET=rpi0`
2. `mix deps.get`
3. `mix firmware`
4. `mix firmware.burn`

## Scanning

```elixir
Harald.LE.scan(:bt)
```

See [Harald](https://github.com/verypossible/harald).
