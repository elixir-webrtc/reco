defmodule RecoWeb.RecoLive do
  use RecoWeb, :live_view

  def render(assigns) do
    ~H"""
    <button
      id="button"
      phx-click="start"
      class="mt-4 py-2 h-12 w-full text-xl rounded-xl text-gray-200 bg-violet-600 hover:bg-violet-700 focus:bg-violet-700"
    >
      Start
    </button>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_event("start", _params, socket) do
    {:noreply, push_navigate(socket, to: "/reco/lobby")}
  end
end
