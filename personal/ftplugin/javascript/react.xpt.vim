XPTemplate priority=personal

" ================================= Snippets ===================================

XPT ri " import 'React' from '';
import `React^ from '`react^';
import `ReactDOM^ from '`react-dom^';

XPT rc " React Component
export default class `App^ extends React.Component {
  render() {
    return (
      `^
    );
  }
}

XPT rr " React Render
ReactDOM.render(<`App^/>, document.getElementById('`app^');

XPT rrt
import { Router, Route, IndexRoute, Link, browserHistory } from 'react-router';

ReactDOM.render((
  <Router history={browserHistory}>
    <Route path="/" component={`MainLayout^}>
      <IndexRoute component={`Home^} />
      <Route component={`SearchLayout^}>
        <Route path="`users^" component={`UserList^} />
        <Route path="`widgets^" component={`WidgetList^} />
      </Route>
    </Route>
  </Router>
), document.getElementById('`app^'));
