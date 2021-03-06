import {
  RECEIVE_ALL_FOLLOWS,
  RECEIVE_FOLLOW,
  REMOVE_FOLLOW
} from '../actions/follows_actions';

const followsReducer = (state = {}, action) => {
  Object.freeze(state)
  let nextState = Object.assign({}, state)

  switch (action.type) {
    case RECEIVE_ALL_FOLLOWS:
      return action.follows;
    case RECEIVE_FOLLOW:
      let addition = Object.assign({}, state.followed, { [action.follow.id]: action.follow })
      nextState = Object.assign({}, state, { followed: addition })
      // Object.assign({}, state, {followed: (Object.assign({}, state.followed, { [action.follow.id]: action.follow }))})
      return nextState;
    case REMOVE_FOLLOW:
      delete nextState[action.followId]
      return nextState;
    default:
      return state;
  }
}

export default followsReducer;