defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Alice", email: "Alice@example.com"},
      %{id: 2, name: "Bob", email: "Bob@example.com"},
      %{id: 3, name: "Eve", email: "Eve@example.com"},
      %{id: 4, name: "Frank", email: "Frank@example.com"},
      %{id: 5, name: "Grace", email: "Grace@example.com"}
    ]

    json(conn, %{users: users})
  end
end
