.class public Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;,
        Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mNativeTinPaymentManifestParserAndroid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFingerprintToSection([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;II[B)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->fingerprints:[[B

    aput-object p3, p0, p2

    return-void
.end method

.method private static addSectionToManifest([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;ILjava/lang/String;JI)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;-><init>(Ljava/lang/String;JI)V

    aput-object v0, p0, p1

    return-void
.end method

.method private static addUrl([Lcom/sec/terrace/browser/payments/TerraceGURL;ILjava/lang/String;)Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-direct {v0, p2}, Lcom/sec/terrace/browser/payments/TerraceGURL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TerraceGURL;->isValid()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aput-object v0, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method private static createManifest(I)[Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-array p0, p0, [Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;

    return-object p0
.end method

.method private static createUrlArray(I)[Lcom/sec/terrace/browser/payments/TerraceGURL;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-array p0, p0, [Lcom/sec/terrace/browser/payments/TerraceGURL;

    return-object p0
.end method


# virtual methods
.method public createNative(Lcom/sec/terrace/Terrace;)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParserJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;->createTinPaymentManifestParserAndroid(Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->mNativeTinPaymentManifestParserAndroid:J

    return-void
.end method

.method public destroyNative()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParserJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->mNativeTinPaymentManifestParserAndroid:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;->destroyTinPaymentManifestParserAndroid(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->mNativeTinPaymentManifestParserAndroid:J

    return-void
.end method

.method public isNativeInitialized()Z
    .locals 4

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-wide v0, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->mNativeTinPaymentManifestParserAndroid:J

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

.method public parsePaymentMethodManifest(Lcom/sec/terrace/browser/payments/TerraceGURL;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;)V
    .locals 6

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParserJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->mNativeTinPaymentManifestParserAndroid:J

    invoke-virtual {p1}, Lcom/sec/terrace/browser/payments/TerraceGURL;->getGURL()Lorg/chromium/url/GURL;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;->parsePaymentMethodManifest(JLorg/chromium/url/GURL;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;)V

    return-void
.end method

.method public parseWebAppManifest(Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParserJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->mNativeTinPaymentManifestParserAndroid:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;->parseWebAppManifest(JLjava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;)V

    return-void
.end method
