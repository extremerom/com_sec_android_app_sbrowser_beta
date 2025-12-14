.class public final Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerraceMediaImage"
.end annotation


# instance fields
.field private mMediaImage:Lorg/chromium/services/media_session/MediaImage;


# direct methods
.method public constructor <init>(Lorg/chromium/services/media_session/MediaImage;)V
    .locals 0
    .param p1    # Lorg/chromium/services/media_session/MediaImage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->mMediaImage:Lorg/chromium/services/media_session/MediaImage;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSizes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSizes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->mMediaImage:Lorg/chromium/services/media_session/MediaImage;

    invoke-virtual {p0}, Lorg/chromium/services/media_session/MediaImage;->getSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->mMediaImage:Lorg/chromium/services/media_session/MediaImage;

    invoke-virtual {p0}, Lorg/chromium/services/media_session/MediaImage;->getSrc()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->mMediaImage:Lorg/chromium/services/media_session/MediaImage;

    invoke-virtual {p0}, Lorg/chromium/services/media_session/MediaImage;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSizes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
