.class public Lcom/sec/terrace/TerraceOrigin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mOrigin:Lorg/chromium/url/Origin;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/url/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/TerraceOrigin;->mOrigin:Lorg/chromium/url/Origin;

    return-void
.end method

.method public static createOpaqueOrigin()Lcom/sec/terrace/TerraceOrigin;
    .locals 2

    new-instance v0, Lcom/sec/terrace/TerraceOrigin;

    invoke-static {}, Lorg/chromium/url/Origin;->createOpaqueOrigin()Lorg/chromium/url/Origin;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/terrace/TerraceOrigin;-><init>(Lorg/chromium/url/Origin;)V

    return-object v0
.end method


# virtual methods
.method public getOrigin()Lorg/chromium/url/Origin;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/TerraceOrigin;->mOrigin:Lorg/chromium/url/Origin;

    return-object p0
.end method

.method public getOriginHost()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/TerraceOrigin;->mOrigin:Lorg/chromium/url/Origin;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getHost()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getOriginPort()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceOrigin;->mOrigin:Lorg/chromium/url/Origin;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getPort()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getOriginScheme()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/TerraceOrigin;->mOrigin:Lorg/chromium/url/Origin;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/url/Origin;->getScheme()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
