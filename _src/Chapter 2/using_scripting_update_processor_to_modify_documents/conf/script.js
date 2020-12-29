function processAdd(cmd) {
  doc = cmd.solrDoc;  
  url = doc.getFieldValue("url");
  if (url != null) {
    parts = url.split(":");
    if (parts != null && parts.length > 0) {
      doc.setField("protocol", parts[0]);
    }
  }
}

function processDelete(cmd) {
}

function processMergeIndexes(cmd) {
}

function processCommit(cmd) {
}

function processRollback(cmd) {
}

function finish() {
}
