.class public Lorg/chromium/ui/resources/statics/StaticResourceLoader;
.super Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Landroid/content/res/Resources;)V
    .locals 1

    new-instance v0, Lorg/chromium/ui/resources/statics/StaticResourceLoader$1;

    invoke-direct {v0, p3}, Lorg/chromium/ui/resources/statics/StaticResourceLoader$1;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;)V

    return-void
.end method
