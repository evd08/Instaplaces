import * as ApiUtil from "../util/session_api_util";
export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER";
export const RECEIVE_SESSION_ERRORS = "RECEIVE_SESSION_ERRORS";

export const receiveCurrentUser = currentUser => {
    return ({
        type: RECEIVE_CURRENT_USER,
        user: currentUser
    })
}

export const logoutCurrentUser = () => ({
    type: LOGOUT_CURRENT_USER
})

export const receiveErrors = errors => {
    return{
        type: RECEIVE_SESSION_ERRORS,
        errors
    }
}

// export const signup = user => dispatch => (APIUtil.signup(user)
//     .then(user => (dispatch(receiveCurrentUser(user))), 
//         err => (dispatch(receiveErrors(err.responseJSON))))
//     );

export const signup = user => dispatch => ApiUtil.signup(user)
    .then(user => dispatch(receiveCurrentUser(user)), 
        error => dispatch(receiveErrors(error.responseJSON))
    );

export const login = user => dispatch => ApiUtil.login(user)
    .then(user => dispatch(receiveCurrentUser(user)),
        error => dispatch(receiveErrors(error.responseJSON))
    );

export const logout = () => dispatch => ApiUtil.logout()
    .then(() => dispatch(logoutCurrentUser()));