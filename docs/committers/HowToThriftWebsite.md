---
title: "How to update the website"
kind: doc
---
## Apache Thrift Website
The thrift website is made up of markdown files with YAML headers and templates,
and uses the [Apache CMS](http://www.apache.org/dev/cms).

### Website Development

Publishing the staging site is doable through the [CMS webgui](https://cms.apache.org/thrift/)
or via shell command:

    :::shell
    % ssh -t people.apache.org publish.pl thrift

Casual changes to the site are best handled through the [javascript
bookmarklet](https://cms.apache.org/thrift/#bookmark).  The workflow is to browse the live site
looking for pages in need of repair, then by clicking on the bookmarklet you will be redirected
to an editor for the page in question that can ultimately commit your changes back to the site
and walk you through the publication process through the webgui.

More complex changes can be accomplished by checking out the [svn
tree](https://svn.apache.org/repos/asf/thrift/cms-site) directly.  Commits to that tree will
trigger builds of the staging site just as if you had committed them by using the CMS webgui.
If you are still pining for a nanoc-like feature to preview your changes before committing them
by having a daemon 'watch' your filesystem for edits, you really need to wrap your brain around
the CMS's ** commit early and commit often ** mantra.  In fact source control systems are far
more effective at communicating changesets than operating systems are (most of the time), and
the CMS's build system is changeset-aware based on the data it receives from svn.  So think of
committing to the CMS's svn tree for thrift as just a formal way of notifying the CMS of your
changes so it can automatically (and efficiently) build them to the staging site, just as if
you were working locally with a daemon that watches your filesystem for modifications and
builds them.

Remember most of all that markdown is aimed first at foremost at human readers, so try to
ensure your source content is easily understood by

- Keeping headings separated from other content with surrounding blank lines,
- Avoiding long lines of text, wrapping at 80-100 characters on average,
- Keeping embedded HTML (which includes code snippets) blocks separated from markdown content
  by blank lines,
- Preferring four-space indents per level over tab characters.

Not only will your readers prefer a clean style, it will result in fewer bugs and a more 
consistent experience with the various markdown parsers deployed by the CMS.

### Updating Release Versions

The current release versioning is kept in the YAML __DATA__ section of the global "configuration
file" [lib/path.pm](https://svn.apache.org/repos/asf/thrift/cms-site/trunk/lib/path.pm). Update
the following values and then following <b>Updating the Website</b> section below 

	current_release: "{{ conf.current_release }}"
	current_release_date: "{{ conf.current_release_date }}"

### Updating the website

After you have updated any content or added new markdown files you will need to commit them to
svn to trigger a [CMS build](http://ci.apache.org/builders/thrift-site-staging) of your changes.
After a few seconds have passed your build will be ready for viewing on the [staging
site](http://thrift.staging.apache.org/).  See the previous discussion for the various
approaches to publishing your changes to the live site after you have verified they are
rendering correctly on the staging site.
