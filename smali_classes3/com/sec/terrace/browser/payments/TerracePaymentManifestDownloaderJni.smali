.class Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloaderJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;


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

.method public static get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloaderJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloaderJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M7ZrlKhj(JLjava/lang/Object;)V

    return-void
.end method

.method public downloadPaymentMethodManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;Lorg/chromium/url/Origin;Lorg/chromium/url/GURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MJfk2SGq(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public downloadWebAppManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;Lorg/chromium/url/Origin;Lorg/chromium/url/GURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MBktIeF7(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public init(Lorg/chromium/content_public/browser/WebContents;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MLDkSFIL(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
