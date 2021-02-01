chrome.runtime.onMessage.addListener(function(request, sender, sendResponse) {
    var response = null

    if ((request) && (request.cmd)) {
        if (request.debug) {
            log("SendRequest", request)
        }

        chrome.runtime.sendNativeMessage('com.connective.signer', request, function(response) {
            if (response == undefined) {
                console.dir(chrome.runtime.lastError);
            } else {
                if (request.debug) {
                    log("ReceivedResponse", response);
                }
                response.resp = request.cmd;
            }
            sendResponse(response);
        });
        return true;

    }
    return true;

    function log(msg, data) {
        console.log("[ExtensionBackground] " + msg);
        if (data) {
            console.dir(data);
        }
    }
});


// force reload the extension when an update is available
chrome.runtime.onUpdateAvailable.addListener(function(info) {
    chrome.runtime.reload();
});
