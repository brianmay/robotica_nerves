use Mix.Config

config :robotica_ui, :viewport, %{
  name: :main_viewport,
  size: {800, 480},
  default_scene: {RoboticaUi.Scene.Loading, nil},
  drivers: [
    %{
      module: Scenic.Driver.Glfw,
      name: :glfw,
      opts: [resizeable: false, title: "robotica_ui"]
     }
   ]
}

config :robotica,
  config_file: "config.yaml"

config :logger,
  backends: [:console]
