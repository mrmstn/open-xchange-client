Mix.Task.run("app.config")
Application.ensure_all_started(:hackney)
ExUnit.start()
