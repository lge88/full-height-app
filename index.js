exports.init = function() {
  var tmpl = require('./template.js');
  if (!document.body) {
    document.write('<body></body>');
  }
  document.body.innerHTML = tmpl;
};