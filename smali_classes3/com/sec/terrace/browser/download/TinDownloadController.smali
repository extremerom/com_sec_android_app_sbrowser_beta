.class public Lcom/sec/terrace/browser/download/TinDownloadController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;,
        Lcom/sec/terrace/browser/download/TinDownloadController$Natives;
    }
.end annotation


# static fields
.field private static sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;


# direct methods
.method private static hasFileAccess(Lorg/chromium/ui/base/WindowAndroid;)Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/download/TinDownloadController;->sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;->hasFileAccess(Lorg/chromium/ui/base/WindowAndroid;)Z

    move-result p0

    return p0
.end method

.method public static onAcquirePermissionResult(JZ)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadControllerJni;->get()Lcom/sec/terrace/browser/download/TinDownloadController$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/download/TinDownloadController$Natives;->onAcquirePermissionResult(JZ)V

    return-void
.end method

.method private static onDangerousDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method private static onDownloadCancelled(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/download/TinDownloadController;->sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;->onDownloadCancelled(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method private static onDownloadCompleted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/download/TinDownloadController;->sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;->onDownloadCompleted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method private static onDownloadInterrupted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Z)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/download/TinDownloadController;->sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;->onDownloadInterrupted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Z)V

    return-void
.end method

.method private static onDownloadStarted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/download/TinDownloadController;->sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native Download started filename = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MimeType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinDownloadController"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/terrace/browser/download/TinDownloadController;->sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;->onDownloadStarted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method private static onDownloadUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/download/TinDownloadController;->sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;->onDownloadUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method private static onPreDownloadRequest(Ljava/lang/String;Lorg/chromium/url/GURL;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/download/TinDownloadController;->sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    invoke-direct {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setUrl(Lorg/chromium/url/GURL;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setUrlChain([Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setOriginalUrl(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setHasUserGesture(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p9, p10}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setTotalBytes(J)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p11}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setContentDisposition(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p12}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFeatureId(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p13}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setReferrer(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    sget-object p1, Lcom/sec/terrace/browser/download/TinDownloadController;->sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;

    invoke-interface {p1, p0, p7, p8}, Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;->onPreDownloadRequest(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)V

    return-void
.end method

.method public static onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadControllerJni;->get()Lcom/sec/terrace/browser/download/TinDownloadController$Natives;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/download/TinDownloadController$Natives;->onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public static requestDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 8

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadControllerJni;->get()Lcom/sec/terrace/browser/download/TinDownloadController$Natives;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/terrace/browser/download/TinDownloadController$Natives;->requestDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static requestDownload(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadControllerJni;->get()Lcom/sec/terrace/browser/download/TinDownloadController$Natives;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/terrace/browser/download/TinDownloadController$Natives;->requestDownloadWithWebContents(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method private static requestFileAccess(JLorg/chromium/ui/base/WindowAndroid;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/download/TinDownloadController;->sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;->requestFileAccess(JLorg/chromium/ui/base/WindowAndroid;)V

    return-void
.end method

.method public static setDownloadNotificationService(Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/download/TinDownloadController;->sDownloadNotificationService:Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;

    return-void
.end method
