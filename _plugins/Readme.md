# Plugins directory

This plugin directory needs to exist in order for mjekyll to work.

## Objectives

We want to index the site collecting all 'papers'. We will use the current 
Jekyll generator pattern to do this.

For each paper we want to chronologically list all workingDraft versions 
as well as all released versions.

Papers will be listed alphabetically. Accessed via the /papers sub-url. 

Papers will be listed by an alphabetical list of keywords. Accessed via the 
/keywords sub-url.

Papers will be listed by an alphabetic list of authors. Accessed 
via the /authors sub-url.

Working drafts will be listed by year/month/name. Accessed via the 
/workingDrafts sub-url.

Released papers will be listed by name/releaseId. Accessed via the 
/released sub-url.

Each paper must create an "entry" in the papers sub-url which contains:
- an abstract
- some keywords
- a version identifier
- authors

