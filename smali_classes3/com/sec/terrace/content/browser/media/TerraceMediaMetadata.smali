.class public Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;
    }
.end annotation


# instance fields
.field private final mMetadata:Lorg/chromium/services/media_session/MediaMetadata;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/services/media_session/MediaMetadata;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/services/media_session/MediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->mMetadata:Lorg/chromium/services/media_session/MediaMetadata;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/services/media_session/MediaMetadata;)V
    .locals 0
    .param p1    # Lorg/chromium/services/media_session/MediaMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->mMetadata:Lorg/chromium/services/media_session/MediaMetadata;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->mMetadata:Lorg/chromium/services/media_session/MediaMetadata;

    invoke-virtual {p0}, Lorg/chromium/services/media_session/MediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->mMetadata:Lorg/chromium/services/media_session/MediaMetadata;

    invoke-virtual {p0}, Lorg/chromium/services/media_session/MediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->mMetadata:Lorg/chromium/services/media_session/MediaMetadata;

    invoke-virtual {p0}, Lorg/chromium/services/media_session/MediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
