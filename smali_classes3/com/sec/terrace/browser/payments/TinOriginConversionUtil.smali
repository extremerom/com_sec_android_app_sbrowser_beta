.class public Lcom/sec/terrace/browser/payments/TinOriginConversionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static convertOriginToPaymentOrigin(Lorg/chromium/url/Origin;)Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    invoke-direct {v0}, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;->scheme:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;->host:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getPort()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;->port:S

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-direct {v1}, Lorg/chromium/mojo_base/mojom/UnguessableToken;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getTokenHighBits()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojo_base/mojom/UnguessableToken;->high:J

    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getTokenLowBits()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojo_base/mojom/UnguessableToken;->low:J

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;->nonceIfOpaque:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;->nonceIfOpaque:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    :goto_0
    return-object v0
.end method

.method public static convertPaymentOriginToOrigin(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;)Lorg/chromium/url/Origin;
    .locals 4

    new-instance v0, Lorg/chromium/url/internal/mojom/Origin;

    invoke-direct {v0}, Lorg/chromium/url/internal/mojom/Origin;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;->scheme:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/url/internal/mojom/Origin;->scheme:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;->host:Ljava/lang/String;

    iput-object v1, v0, Lorg/chromium/url/internal/mojom/Origin;->host:Ljava/lang/String;

    iget-short v1, p0, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;->port:S

    iput-short v1, v0, Lorg/chromium/url/internal/mojom/Origin;->port:S

    iget-object v1, p0, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;->nonceIfOpaque:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-direct {v1}, Lorg/chromium/mojo_base/mojom/UnguessableToken;-><init>()V

    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;->nonceIfOpaque:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-wide v2, p0, Lorg/chromium/mojo_base/mojom/UnguessableToken;->high:J

    iput-wide v2, v1, Lorg/chromium/mojo_base/mojom/UnguessableToken;->high:J

    iget-wide v2, p0, Lorg/chromium/mojo_base/mojom/UnguessableToken;->low:J

    iput-wide v2, v1, Lorg/chromium/mojo_base/mojom/UnguessableToken;->low:J

    iput-object v1, v0, Lorg/chromium/url/internal/mojom/Origin;->nonceIfOpaque:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput-object p0, v0, Lorg/chromium/url/internal/mojom/Origin;->nonceIfOpaque:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    :goto_0
    new-instance p0, Lorg/chromium/url/Origin;

    invoke-direct {p0, v0}, Lorg/chromium/url/Origin;-><init>(Lorg/chromium/url/internal/mojom/Origin;)V

    return-object p0
.end method
