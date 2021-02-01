/*
 * eID Chrome project.
 *
 * Copyright 2015 e-Contract.be BVBA. All rights reserved.
 * e-Contract.be BVBA proprietary/confidential. Use is subject to license terms.
 */

var backgroundPort = null;

function backgroundListener(message) {
    console.log("content script: received from background: " + message);
    console.dir(message);
    if (message.type === "eid-chrome-extension-response") {
        // send back to page script
        window.postMessage(message, "*");
    } else if (message.type === "eid-chrome-extension-finish") {
        // also send to the page script
        console.log("content script: sending finish");
        window.postMessage(message, "*");
    }
}

function pageMessageEvent(event) {
    console.log("content script: event received");
    console.dir(event);

    if (event.source !== window) {
        return;
    }

    if (event.data.type === "eid-chrome-extension-start") {
        backgroundPort = chrome.runtime.connect({name: "eid-chrome-extension"});
        backgroundPort.onMessage.addListener(backgroundListener);
        backgroundPort.postMessage(event.data);
    }

    if (event.data.type === "eid-chrome-extension-request") {
        console.log("content script: sending to background: " + event.data);
        backgroundPort.postMessage(event.data);
    }
}

/*
 * Let the page know that we are available.
 */
function init() {
    console.log("content script: init");
    window.addEventListener("message", pageMessageEvent, false);

    var isInstalledNode = document.createElement('div');
    isInstalledNode.id = 'eid-chrome-extension-is-installed';
    document.body.appendChild(isInstalledNode);

    var helloMessage = {
        type: "eid-chrome-extension"
    };
    window.postMessage(helloMessage, "*");
}

init();