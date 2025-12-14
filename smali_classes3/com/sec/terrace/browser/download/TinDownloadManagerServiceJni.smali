.class Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancelDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M8oJkO6G(JLjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public checkForExternallyRemovedDownloads(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MG01lqvo(JLjava/lang/Object;Z)V

    return-void
.end method

.method public getAllDownloads(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M15G5CBW(JLjava/lang/Object;Z)V

    return-void
.end method

.method public init(Lcom/sec/terrace/browser/download/TinDownloadManagerService;Z)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MDMmmkzW(Ljava/lang/Object;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public pauseDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MafdLYET(JLjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public removeDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MkbJPv50(JLjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public renameDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/base/Callback;Z)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MoZptihk(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public resumeDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MbnhauZ_(JLjava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public updateLastAccessTime(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->McIfsGe_(JLjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public updateMimetypeAndTargetPath(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->MhMxEs3p(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method
