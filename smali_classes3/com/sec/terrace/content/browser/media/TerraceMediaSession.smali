.class public Lcom/sec/terrace/content/browser/media/TerraceMediaSession;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mMediaSession:Lcom/sec/terrace/content/browser/media/TinMediaSession;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/content/browser/media/TinMediaSession;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/content/browser/media/TinMediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->mMediaSession:Lcom/sec/terrace/content/browser/media/TinMediaSession;

    return-void
.end method

.method public static createTerraceMediaSession(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/media/TerraceMediaSession;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/content/browser/media/TinMediaSession;->createTinMediaSession(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/media/TinMediaSession;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;-><init>(Lcom/sec/terrace/content/browser/media/TinMediaSession;)V

    :cond_1
    return-object v0
.end method

.method public static makeTerraceMediaSession(Lorg/chromium/content_public/browser/MediaSession;)Lcom/sec/terrace/content/browser/media/TerraceMediaSession;
    .locals 1

    new-instance v0, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/media/TinMediaSession;->makeTinMediaSession(Lorg/chromium/content_public/browser/MediaSession;)Lcom/sec/terrace/content/browser/media/TinMediaSession;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;-><init>(Lcom/sec/terrace/content/browser/media/TinMediaSession;)V

    return-object v0
.end method


# virtual methods
.method public didReceiveAction(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->mMediaSession:Lcom/sec/terrace/content/browser/media/TinMediaSession;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TinMediaSession;->didReceiveAction(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->getMediaSession()Lorg/chromium/content_public/browser/MediaSession;

    move-result-object p0

    check-cast p1, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->getMediaSession()Lorg/chromium/content_public/browser/MediaSession;

    move-result-object p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getMediaSession()Lorg/chromium/content_public/browser/MediaSession;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->mMediaSession:Lcom/sec/terrace/content/browser/media/TinMediaSession;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinMediaSession;->getMediaSession()Lorg/chromium/content_public/browser/MediaSession;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->getMediaSession()Lorg/chromium/content_public/browser/MediaSession;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->mMediaSession:Lcom/sec/terrace/content/browser/media/TinMediaSession;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinMediaSession;->resume()V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->mMediaSession:Lcom/sec/terrace/content/browser/media/TinMediaSession;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/media/TinMediaSession;->seekTo(J)V

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->mMediaSession:Lcom/sec/terrace/content/browser/media/TinMediaSession;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinMediaSession;->stop()V

    return-void
.end method

.method public suspend()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->mMediaSession:Lcom/sec/terrace/content/browser/media/TinMediaSession;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TinMediaSession;->suspend()V

    return-void
.end method
