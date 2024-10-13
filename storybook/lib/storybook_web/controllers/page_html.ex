defmodule StorybookWeb.PageHTML do
  use StorybookWeb, :html
  import BulmaComponents.Flash
  embed_templates "page_html/*"
end
