.class interface abstract Lcom/sec/terrace/browser/download/TinDownloadController$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/download/TinDownloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract onAcquirePermissionResult(JZ)V
.end method

.method public abstract onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JZ)V
.end method

.method public abstract requestDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
.end method

.method public abstract requestDownloadWithWebContents(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
.end method
