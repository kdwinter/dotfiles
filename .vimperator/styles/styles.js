var loaduserstyles = function() {
  var userstyles = [
    [
      'wikipedia:minimal',
      'en.wikipedia.org',
      'wikipedia.css'
    ],

    [
      'reddit:minimal',
      'reddit.com',
      'reddit.css'
    ],

    [
      'archlinux-forums:minimal',
      'bbs.archlinux.org',
      'archlinux.forum.css'
    ],

    [
      'google:minimal',
      'http://www.google.com/search*',
      'google.css'
    ]
  ], styledir = io.getRuntimeDirectories('styles')[0].path;

  for ([i, [name, filter, file]] in Iterator(userstyles)) {
    styles.removeSheet(false, name);
    styles.addSheet(false, name, filter, 
    File(styledir+'/'+file).read());
  }
}

loaduserstyles();

commands.add(
  ['loaduserstyles'],
  'Load all user styles',
  loaduserstyles
);
