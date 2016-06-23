ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Quoteme.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Quoteme.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Quoteme.Repo)

