function newState() {
  return { initialized: false, connected: false, shownAt: null }
}

function shouldShow(state, connected, now) {
  var established = state.initialized && !state.connected && connected
  state.initialized = true
  state.connected = connected
  var cooldownMs = 15000
  if (!established || (state.shownAt !== null && now - state.shownAt < cooldownMs)) return false
  state.shownAt = now
  return true
}
