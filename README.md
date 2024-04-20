## Relocatable build cache

Reproduces bug reported at:
https://issuetracker.google.com/issues/278255388
https://issuetracker.google.com/issues/282761461

Runt test.sh to reproduce the issue.

```
cat App1/mylibrary/build/intermediates/compiled_local_resources/debug/compileDebugLibraryResources/out/layout_activity_main2.xml.flat
AAPT,�3
layout/activity_main2"�/home/runner/work/relocatable-build-cacheble/relocatable-build-cacheble/App1/mylibrary/build/intermediates/packaged_res/debug/packageDebugResources/layout/activity_main2.xml*
id/fab*

id/toolbar
�
;
android*http://schemas.android.com/apk/res/android$
4
app'http://schemas.android.com/apk/res-auto$
```