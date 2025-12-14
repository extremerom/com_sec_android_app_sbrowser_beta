.class public Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mCharset:Ljava/lang/String;

.field private mData:Ljava/io/InputStream;

.field private mMimeType:Ljava/lang/String;

.field private mReasonPhrase:Ljava/lang/String;

.field private mResponseHeaderNames:[Ljava/lang/String;

.field private mResponseHeaderValues:[Ljava/lang/String;

.field private mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:I


# direct methods
.method private fillInResponseHeaderNamesAndValuesIfNeeded()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mResponseHeaders:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mResponseHeaderNames:[Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mResponseHeaderNames:[Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mResponseHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mResponseHeaderValues:[Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mResponseHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mResponseHeaderNames:[Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v3, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mResponseHeaderValues:[Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private getResponseHeaderNames()[Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->fillInResponseHeaderNamesAndValuesIfNeeded()V

    iget-object p0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mResponseHeaderNames:[Ljava/lang/String;

    return-object p0
.end method

.method private getResponseHeaderValues()[Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->fillInResponseHeaderNamesAndValuesIfNeeded()V

    iget-object p0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mResponseHeaderValues:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mCharset:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/io/InputStream;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mData:Ljava/io/InputStream;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mReasonPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/components/embedder_support/util/WebResourceResponseInfo;->mStatusCode:I

    return p0
.end method
