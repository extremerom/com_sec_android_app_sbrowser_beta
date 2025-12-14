.class public interface abstract Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract doNotStoreCurrentPage(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method public abstract flushEntry(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method public abstract init(Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;)J
.end method

.method public abstract setAllowList(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method public abstract setBlockedFeatures(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;I)V
.end method

.method public abstract setBlockedUrl(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;[Ljava/lang/String;)V
.end method

.method public abstract setConfigSetting(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Ljava/lang/String;Ljava/lang/String;)V
.end method
