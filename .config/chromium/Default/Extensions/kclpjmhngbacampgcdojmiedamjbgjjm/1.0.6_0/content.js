function generateInstalledElement() {
    var manifest = chrome.runtime.getManifest();
    var elementId = 'ConnectiveDocSignExtentionInstalled';

    // make sure there's only one node. OUR NODE...!
    var isInstalledNode = document.getElementById(elementId);
    if(isInstalledNode != null) {
        isInstalledNode.parentElement.removeChild(isInstalledNode)
    }

    // generate new node
    isInstalledNode = document.createElement('meta');
    isInstalledNode.id = elementId;
    isInstalledNode.name = elementId;
    isInstalledNode.dataset.extensionVersion = manifest.version;

    // insert
    document.head.appendChild(isInstalledNode);
}
generateInstalledElement(); // dont forget to call this...


window.addEventListener("message", function(event) {
	// ignore if not for us
	if ((event.source !== window) || (!event.data) || (!event.data.cmd)) {
		return;
	}

	// pass all events on to the background script and wait for a reply
	// the reply gets sent back to the caller
	if (event.data.debug) {
		log("ReceivedEvent", event.data);
	}
	chrome.runtime.sendMessage(event.data, function(response) {
		if (event.data.debug) {
			log("ReceivedResponse", response);
		}
		window.postMessage(response, '*');
	});

	function log(msg, data) {
		console.log("[ExtensionContent] " + msg)
		if (data) {
			console.dir(data)
		}
	}
});
