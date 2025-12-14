.class public final Lcom/sec/terrace/browser/download/TerraceDownloadController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;
    }
.end annotation


# direct methods
.method public static onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/download/TinDownloadController;->onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public static requestDownload(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7

    invoke-static {p0}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/sec/terrace/browser/download/TinDownloadController;->requestDownload(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static requestDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/sec/terrace/browser/download/TinDownloadController;->requestDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static setDownloadNotificationService(Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;)V

    invoke-static {v0}, Lcom/sec/terrace/browser/download/TinDownloadController;->setDownloadNotificationService(Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;)V

    return-void
.end method
