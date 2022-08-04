import Config

config :nex_json_schema, :remote_schema_resolver, fn url -> Jason.decode!(HTTPoison.get!(url).body) end
