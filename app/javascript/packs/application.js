/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


var OperationStoreClient = require("./OperationStoreClient")

window.runOperation = function(operationName, variables) {
  fetch("/graphql", {
    method: "POST",
    body: JSON.stringify({
      operation_id: OperationStoreClient.getOperationId(operationName),
      variables: variables || {},
    }),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  }).then(function(response) {
    return response.json()
  }).then(function(json) {
    document.querySelector("#operation-" + operationName).innerText = JSON.stringify(json, undefined, 2)
  })
}

window.getValue = function(inputId) {
  return document.querySelector(inputId).value
}
