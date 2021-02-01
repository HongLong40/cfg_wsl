/*
 * eID Chrome project.
 *
 * Copyright 2015 e-Contract.be BVBA. All rights reserved.
 * e-Contract.be BVBA proprietary/confidential. Use is subject to license terms.
 */

function contentScriptListener(message, port) {
    console.log("background: content script message: " + message);
    console.dir(message);
    console.dir(port);

    if (message.type === "eid-chrome-extension-start") {
        var versionRequest = {
            type: "eid-chrome-extension-start",
            // important that the extension has absolutely no notion of the XML protocol itself
            extensionVersion: chrome.runtime.getManifest().version,
            userAgent: navigator.userAgent,
            applicationUrl: port.sender.url
        };
        this.nativePort.postMessage(versionRequest, "*");
    }

    if (message.type === "eid-chrome-extension-request") {
        console.log("post message to native");
        this.nativePort.postMessage(message);
    }
}

function nativeMessageListener(message) {
    console.log("receiving native message");
    console.dir(message);
    if (message.type === "eid-chrome-extension-response") {
        this.contentScriptPort.postMessage(message);
    } else {
        // important to simply ignore other message types
        console.log("unsupported message type: " + message.type);
    }
}

function nativeDisconnectListener() {
    console.log("native disconnect");
    var lastError = chrome.runtime.lastError;
    var errorMessage;
    if (lastError) {
        console.log("background last error: " + lastError.message);
        console.dir(lastError);
        errorMessage = lastError.message;
    } else {
        errorMessage = "No last error message.";
    }
    var finishMessage = {
        type: "eid-chrome-extension-finish",
        data: errorMessage
    };
    this.contentScriptPort.postMessage(finishMessage);
    chrome.pageAction.hide(this.contentScriptPort.sender.tab.id);
}

function connectListener(port) {
    console.log("background: connect event: " + port);
    console.dir(port);

    this.contentScriptPort = port;
    this.contentScriptPort.onMessage.addListener(contentScriptListener);

    this.nativePort = chrome.runtime.connectNative("be.econtract.eid");
    this.nativePort.onMessage.addListener(nativeMessageListener);
    this.nativePort.onDisconnect.addListener(nativeDisconnectListener);

    chrome.pageAction.show(this.contentScriptPort.sender.tab.id);
}


chrome.runtime.onConnect.addListener(connectListener);
console.log("background script initialized");