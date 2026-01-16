import React from 'react';
import ReactDOM from 'react-dom/client';
import App from '~/components/hello-world/App.jsx';

class HelloWorld extends HTMLElement {

  async connectedCallback() {
    await Island.ready(this);
    this.init();
  }

  init() {
    ReactDOM.createRoot(this).render(
      <React.StrictMode>
        <App />
      </React.StrictMode>
    )
  }

}

if("customElements" in window) {
  customElements.define("hello-world", HelloWorld);
}