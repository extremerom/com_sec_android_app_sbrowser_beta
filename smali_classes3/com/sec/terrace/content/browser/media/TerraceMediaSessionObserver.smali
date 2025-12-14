.class public abstract Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mMediaSession:Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

.field private mMediaSessionObserver:Lorg/chromium/content_public/browser/MediaSessionObserver;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/media/TerraceMediaSession;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver$1;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->getMediaSession()Lorg/chromium/content_public/browser/MediaSession;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver$1;-><init>(Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;Lorg/chromium/content_public/browser/MediaSession;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mMediaSessionObserver:Lorg/chromium/content_public/browser/MediaSessionObserver;

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mMediaSession:Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    return-void
.end method


# virtual methods
.method public final getMediaSession()Lcom/sec/terrace/content/browser/media/TerraceMediaSession;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mMediaSession:Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    return-object p0
.end method

.method public abstract mediaSessionActionsChanged(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public mediaSessionArtworkChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract mediaSessionDestroyed()V
.end method

.method public abstract mediaSessionMetadataChanged(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)V
.end method

.method public mediaSessionPositionChanged(Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public abstract mediaSessionStateChanged(ZZ)V
.end method

.method public final stopObserving()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mMediaSessionObserver:Lorg/chromium/content_public/browser/MediaSessionObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/MediaSessionObserver;->stopObserving()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mMediaSessionObserver:Lorg/chromium/content_public/browser/MediaSessionObserver;

    iput-object v0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mMediaSession:Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    return-void
.end method
