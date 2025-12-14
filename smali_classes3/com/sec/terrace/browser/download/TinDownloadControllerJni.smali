.class Lcom/sec/terrace/browser/download/TinDownloadControllerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/download/TinDownloadController$Natives;


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

.method public static get()Lcom/sec/terrace/browser/download/TinDownloadController$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/download/TinDownloadControllerJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/download/TinDownloadControllerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAcquirePermissionResult(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MSKrslxe(JZ)V

    return-void
.end method

.method public onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MgmagsAq(Ljava/lang/Object;Ljava/lang/Object;JZ)V

    return-void
.end method

.method public requestDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MbugjzIt(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZIZ)V

    return-void
.end method

.method public requestDownloadWithWebContents(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->M5Y0RtSF(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    return-void
.end method
