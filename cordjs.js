var path = require('path');
var fs   = require('fs');
var lib  = path.join(path.dirname(fs.realpathSync(__filename)), 'node_modules/cordjs/lib');

require(lib + '/cordjs/command').run();
