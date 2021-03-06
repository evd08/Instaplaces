import {
  RECEIVE_ALL_COMMENTS,
  RECEIVE_COMMENT,
  REMOVE_COMMENT
} from '../actions/comments_actions';

const commentsReducer = (state = {}, action) => {
  Object.freeze(state)
  let nextState = Object.assign({}, state)

  switch(action.type){
    case RECEIVE_ALL_COMMENTS:
      return action.comments;
    case RECEIVE_COMMENT:
      nextState = Object.assign({}, state, {[action.comment.id]: action.comment})
      return nextState;
    case REMOVE_COMMENT:
      delete nextState[action.commentId]
      return nextState;
    default:
      return state;
  }
}

export default commentsReducer;