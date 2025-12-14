.class public interface abstract Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TerraceDownloadDelegate"
.end annotation


# virtual methods
.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract isDownloadOnSDCard(Ljava/lang/String;)Z
.end method

.method public abstract parseOriginalUrl(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract updatePendingMediaItem(Landroid/net/Uri;)V
.end method
