/*
 * eID Chrome project.
 *
 * Copyright 2015 e-Contract.be BVBA. All rights reserved.
 * e-Contract.be BVBA proprietary/confidential. Use is subject to license terms.
 */

function contentLoaded() {
    var versionElement = document.getElementById("version");
    versionElement.innerHTML = chrome.runtime.getManifest().version;
}

document.addEventListener('DOMContentLoaded', contentLoaded);