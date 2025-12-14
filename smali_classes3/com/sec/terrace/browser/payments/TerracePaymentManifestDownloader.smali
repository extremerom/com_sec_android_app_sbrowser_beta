.class public Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;,
        Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mNativeObject:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToTerraceGURL(Lorg/chromium/url/GURL;)Lcom/sec/terrace/browser/payments/TerraceGURL;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getPossiblyInvalidSpec()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/payments/TerraceGURL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloaderJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->mNativeObject:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;->destroy(JLcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->mNativeObject:J

    return-void
.end method

.method public downloadPaymentMethodManifest(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V
    .locals 7

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloaderJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->mNativeObject:J

    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TinOriginConversionUtil;->convertPaymentOriginToOrigin(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;)Lorg/chromium/url/Origin;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/terrace/browser/payments/TerraceGURL;->getGURL()Lorg/chromium/url/GURL;

    move-result-object v5

    move-object v3, p0

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;->downloadPaymentMethodManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;Lorg/chromium/url/Origin;Lorg/chromium/url/GURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void
.end method

.method public downloadWebAppManifest(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V
    .locals 7

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloaderJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->mNativeObject:J

    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TinOriginConversionUtil;->convertPaymentOriginToOrigin(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;)Lorg/chromium/url/Origin;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/terrace/browser/payments/TerraceGURL;->getGURL()Lorg/chromium/url/GURL;

    move-result-object v5

    move-object v3, p0

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;->downloadWebAppManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;Lorg/chromium/url/Origin;Lorg/chromium/url/GURL;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void
.end method

.method public initialize(Lcom/sec/terrace/Terrace;)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloaderJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader$Natives;->init(Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->mNativeObject:J

    return-void
.end method

.method public isInitialized()Z
    .locals 4

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-wide v0, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
