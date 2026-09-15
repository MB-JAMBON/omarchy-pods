var LID_OPEN = 0
var LID_CLOSED = 1
var LID_UNKNOWN = 2
var CARD_COOLDOWN_MS = 15000

function newState() {
  return { initialized: false, connected: false, lidState: LID_UNKNOWN, shownAt: null }
}

function shouldShow(state, connected, lidState, now) {
  var established = state.initialized && !state.connected && connected
  var opened = state.initialized && state.lidState === LID_CLOSED && lidState === LID_OPEN
  state.initialized = true
  state.connected = connected
  state.lidState = lidState
  if ((!established && !opened)
      || (state.shownAt !== null && now - state.shownAt < CARD_COOLDOWN_MS)) return false
  state.shownAt = now
  return true
}
