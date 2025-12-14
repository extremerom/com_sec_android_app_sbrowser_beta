.class public Lorg/chromium/url/URI;
.super Lorg/chromium/url/GURL;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/url/GURL;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOrigin()Lorg/chromium/url/GURL;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/url/URI;->getOrigin()Lorg/chromium/url/URI;

    move-result-object p0

    return-object p0
.end method

.method public getOrigin()Lorg/chromium/url/URI;
    .locals 1

    new-instance v0, Lorg/chromium/url/URI;

    invoke-direct {v0}, Lorg/chromium/url/URI;-><init>()V

    invoke-virtual {p0, v0}, Lorg/chromium/url/GURL;->getOriginInternal(Lorg/chromium/url/GURL;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getPossiblyInvalidSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
