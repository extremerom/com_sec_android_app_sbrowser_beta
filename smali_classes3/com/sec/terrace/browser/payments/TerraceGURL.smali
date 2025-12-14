.class public Lcom/sec/terrace/browser/payments/TerraceGURL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mGURL:Lorg/chromium/url/GURL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/url/GURL;

    invoke-direct {v0, p1}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TerraceGURL;->mGURL:Lorg/chromium/url/GURL;

    return-void
.end method

.method private constructor <init>(Lorg/chromium/url/GURL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TerraceGURL;->mGURL:Lorg/chromium/url/GURL;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/sec/terrace/browser/payments/TerraceGURL;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceGURL;->mGURL:Lorg/chromium/url/GURL;

    check-cast p1, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/payments/TerraceGURL;->getGURL()Lorg/chromium/url/GURL;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/url/GURL;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getGURL()Lorg/chromium/url/GURL;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceGURL;->mGURL:Lorg/chromium/url/GURL;

    return-object p0
.end method

.method public getOrigin()Lcom/sec/terrace/browser/payments/TerraceGURL;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/payments/TerraceGURL;

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceGURL;->mGURL:Lorg/chromium/url/GURL;

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getOrigin()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/payments/TerraceGURL;-><init>(Lorg/chromium/url/GURL;)V

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceGURL;->mGURL:Lorg/chromium/url/GURL;

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getScheme()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSpec()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceGURL;->mGURL:Lorg/chromium/url/GURL;

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TerraceGURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceGURL;->mGURL:Lorg/chromium/url/GURL;

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->isValid()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceGURL;->mGURL:Lorg/chromium/url/GURL;

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
