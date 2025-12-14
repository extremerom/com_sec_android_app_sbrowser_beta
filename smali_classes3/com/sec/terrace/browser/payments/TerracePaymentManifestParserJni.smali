.class Lcom/sec/terrace/browser/payments/TerracePaymentManifestParserJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;


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

.method public static get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParserJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParserJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createTinPaymentManifestParserAndroid(Lorg/chromium/content_public/browser/WebContents;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MtftqkAA(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public destroyTinPaymentManifestParserAndroid(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MoQYA_SX(J)V

    return-void
.end method

.method public parsePaymentMethodManifest(JLorg/chromium/url/GURL;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M89Dh5Sv(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public parseWebAppManifest(JLjava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MSbjhQWO(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
