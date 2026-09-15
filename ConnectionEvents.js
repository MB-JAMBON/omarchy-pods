function newState() {
  return { initialized: false, connected: false, lidState: 2, shownAt: null }
}

function shouldShow(state, connected, lidState, now) {
  var established = state.initialized && !state.connected && connected
  var opened = state.initialized && state.lidState === 1 && lidState === 0
  state.initialized = true
  state.connected = connected
  state.lidState = lidState
  var cooldownMs = 15000
  if ((!established && !opened)
      || (state.shownAt !== null && now - state.shownAt < cooldownMs)) return false
  state.shownAt = now
  return true
}
