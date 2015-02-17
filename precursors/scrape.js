$pieces = $('h1, h2, h3, h4, h5, h6, p, a, blockquote, li')

var textFile = null,
  makeTextFile = function (text) {
    var data = new Blob([text], {type: 'text/json'});

    // If we are replacing a previously generated file we need to
    // manually revoke the object URL to avoid memory leaks.
    if (textFile !== null) {
      window.URL.revokeObjectURL(textFile);
    }

    textFile = window.URL.createObjectURL(data);

    return textFile;
  };

function slugify(text) {
return Math.floor(Math.random() * (100)) + "-" + text.toString().toLowerCase()
.replace(/\s+/g, '-') // Replace spaces with -
.replace(/[^\w\-]+/g, '') // Remove all non-word chars
.replace(/\-\-+/g, '-') // Replace multiple - with single -
.replace(/^-+/, '') // Trim - from start of text
.replace(/-+$/, ''); // Trim - from end of text
}

var $json = new Object();

for (var $i = 0; $i < $pieces.length; $i++) {
  $piece = $pieces[$i];
  $slug = slugify($piece.innerHTML).substr(0, 20)
  $json[$slug] = $piece.innerHTML
}

document.location.href = makeTextFile(JSON.stringify($json));
