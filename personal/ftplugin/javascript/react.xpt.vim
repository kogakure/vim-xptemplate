XPTemplate priority=personal

" ================================= Snippets ===================================

XPT ri " import 'React' from '';
import `React^ from '`react^';
import `ReactDOM^ from '`react-dom^';

XPT scomp " React stateless component
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
import React from 'react';

const `name^ = (`arg*^) => {
  return (
    <div>`name^</div>
  )
};

export default `name^;

XPT rcomp " React component
import React, { Component } from 'react';

class `name^ extends Component {
  render() {
    return (
      <div>`name^</div>
    )
  }
}

export default `name^;

XPT hoc " Higher order component
XSET arg*|post=ExpandIfNotEmpty(', ', 'arg*')
XSET arg2*|post=ExpandIfNotEmpty(', ', 'arg2*')
import React, { Component } from 'react';
import { connect } from 'react-redux';

class `name^ extends Component {
  render() {
    return (
      <div>`name^</div>
    )
  }
}

const mapStateToProps = ({`arg*^}) => ({`arg2*^});

export default connect(mapStateToProps, null)(`name^);

XPT action " Create an action, returning an object
import { `type^ } from './types';

export const `action^ = () => {
  return {
    payload: `payload^,
    type: `type^
  }
};

XPT thunk " Create a thunk action, returning a function
import { `type^ } from './types';

export const `action^ = () => {
  return (dispatch) => {
    dispatch({
      payload: `payload^,
      type: `type^
    });
  };
};

XPT reducer " Create a simple reducer
import { `action^ } from '`directory^';

const INITIAL_STATE = {};

export default (state = INITIAL_STATE, action) => {
  switch (action.type) {
    case `action^: return state;
    default: return state;
  }
};

XPT duck " Create an entire redux flow, with ducks concept
// Actions
const `ActionName^ = '`Resource^/`ActionName^';

// Reducer
export default (state = {}, action) => {
  switch (action.type) {
    case `ActionName^: return state;
    default: return state;
  }
};

// Action Creators
export function `ActionCreator^() {
};

XPT impvar " Import an exported variable from a library
import { `variable^ } from '`library^';

XPT impvar " Import a default exported variable from a library
import `variable^ from '`library^';

XPT impvardir " Import an exported variable from a directory
import { `variable^ } from '.`directory^';

XPT impdir " Import a default exported variable from a directory
import `variable^ from '.`directory^';

XPT cwm " ComponentWillMount Lifecycle
componentWillMount() {
  `^
}

XPT cdm " ComponentDidMount Lifecycle
componentDidMount() {
  `^
}

XPT cwu " ComponentWillUpdate Lifecycle
componentWillUpdate(`nextProps^, `nextState^) {
  `^
}

XPT cdu " ComponentDidUpdate Lifecycle
componentDidUpdate(`prevProps^, `prevState^) {
  `^
}

XPT cwrp " ComponentWillReceiveProps Lifecycle
componentWillReceiveProps(`nextProps^) {
  `^
}

XPT cwun " ComponentWillUnmount Lifecycle
componentWillUnmount() {
  `^
}

XPT scu " ShouldComponentUpdate Lifecycle
shouldComponentUpdate(`nextProps^, `nextState^) {
  `^
}
