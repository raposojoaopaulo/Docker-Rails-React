import { Controller } from "@hotwired/stimulus"
import React from "react"
import ReactDOM from "react-dom/client"
import App from "../App"

// Connects to data-controller="react"
export default class extends Controller {
  connect() {
    console.log("react controller conected test 3")

    const root = ReactDOM.createRoot(document.getElementById("app"))
    root.render(
    <React.StrictMode>
      <App/> 
    </React.StrictMode>
    )
  }
}
