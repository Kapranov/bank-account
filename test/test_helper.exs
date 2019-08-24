Application.ensure_all_started(:mox)
ExUnit.configure formatters: [ExUnit.CLIFormatter, ExUnitNotifier]
ExUnit.start(exclude: [:skip], trace: true)
