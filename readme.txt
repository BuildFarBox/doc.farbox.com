Key: doc.farbox.com

## About

This is a template for <http://doc.farbox.com>, a site built by about `60 lines` code (in Jade template syntax), but with lots of amazing features.

This template also means a `documentation generator`, turns a directory into a powerful website to render your documents.

If you installed the APP from FarBox named `FarBox Editor`, you can also export a directory into a PDF document, same contents to your website.


## How to use?

### Install

1. make sure you had an account in `farbox.com`, which means installed a Dropbox APP named `FarBox`
2. put `stylesheets` and `index+read.jade` into the `<your site folder in FarBox>/template`
3. visit your site, and waiting (less than 2 minutes) the files to be synced from Dropbox to FarBox.

### Run

1. put your documents into the `docs` directory
2. put a `index.txt(/.md/.mk/.markdown)` into the `docs` directory to create homepage


## Features

### No Server Needed, Supports Custom Domains

This is a template for `FarBox.com` which one will turn your directory in Dropbox into a powerful website, so no server needed.

You can simply create a site folder named a subdomain of `*.farbox.com`, like `the-doc.farbox.com`, and the domain will be visitable. Then go to `http://yourdomain.com/admin` to discovery something.

### Custom Template

This is a template with a little code, so, just modify it if you like.

By the way, `FarBox` supports `AutoReload`, no extra tools needed, your website will be live in realtime when you coding the template.


### Custom Position.

Every document need a position. you can use `1.23 document title.txt` to give the this document a position of `1.23`.

The filename rule is working for a file or a directory.

You can also declare a position in the metadata of a document (or landing doc).

btw, `1.2` will be at the front of `1.3`.

If do not put a position for a document, it also works, but without nice order.


### Supports Metadata

Before writing the content of a document, you can put `metadata` first. The simplest way looks like below:

```
Title: Document Title
Position: 1.2
Date: 2014-01-06 12:09
```

Supports YAML too, it looks like:

```
---
Title: Document Title
Position: 1.2
Date: 2014-01-06 12:09
Tags:
    - Tag1
    - Tag2
---
```



### Directory Landing Page

Put a `index.txt(/.md/.mk/.markdown)` into a directory, then the directory will have it's own landing page.

We also call it `landing doc`.


### Supports Table of Contents

It should be declared in the metadata part.

```
toc: yes
/* or */
toc: no
```


### Auto Generated Navigation

The navigation is very smart.

Subfolders in `docs` will be the main cells, and the subfolders of subfolders will be the sub cells.

If you open the url of a document, and the document has a `table of contents`, then the `table of contents` will be injected into the navigation too.

If you open the url of a document, the Navigation will scroll to the item which one is selected.

If a directory (displayed in the navigation) has no lading doc in it, the url of this directory will be `#`.


### Supports markdown

- Supports Mathjax.
- Auto linebreaks, if do not need this feature, make sure your filename endswith '.mk'.
- Table and Footnote are extended.


### Syntax Highlighting

#### codes highlighting

\`\`\`lang
codes
\`\`\`

#### codes highlighting with lines displayed
\`\`\`lang:n
codes
\`\`\`


### Fulltext Search

This feature is also supported by `FarBox` too. But only two languages are usable: English and Chinese.

### Document Change Logs

This is a amazing feature, you can visit `http://youdomain.com/service/sync_logs` (make sure you are login), this page will show the logs of sync in `JSON` format.

You will get some information like `when` (even `which ip`) a document was changed/deleted/created.


### More

You can set users with password to visit your site, and a dig sort system base on your visitors of a site, .etc. All of these are from the features of `FarBox`.
