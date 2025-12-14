.class public Lcom/sec/terrace/browser/flags/TinCachedFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/flags/TinCachedFlags$LazyHolder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/flags/TinCachedFlags;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/flags/TinCachedFlags$LazyHolder;->a()Lcom/sec/terrace/browser/flags/TinCachedFlags;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setFullListOfFlags()V
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/cached_flags/CachedFlagUtils;->setFullListOfFlags(Ljava/util/List;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/cached_flags/CachedFlagUtils;->setFullListOfFeatureParams(Ljava/util/List;)V

    return-void
.end method
