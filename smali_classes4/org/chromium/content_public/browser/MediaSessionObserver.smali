.class public abstract Lorg/chromium/content_public/browser/MediaSessionObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mMediaSession:Lorg/chromium/content/browser/MediaSessionImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/MediaSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/chromium/content/browser/MediaSessionImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/chromium/content/browser/MediaSessionImpl;

    iput-object p1, p0, Lorg/chromium/content_public/browser/MediaSessionObserver;->mMediaSession:Lorg/chromium/content/browser/MediaSessionImpl;

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/MediaSessionImpl;->addObserver(Lorg/chromium/content_public/browser/MediaSessionObserver;)V

    return-void
.end method


# virtual methods
.method public mediaSessionActionsChanged(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public mediaSessionArtworkChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/services/media_session/MediaImage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public mediaSessionDestroyed()V
    .locals 0

    return-void
.end method

.method public mediaSessionMetadataChanged(Lorg/chromium/services/media_session/MediaMetadata;)V
    .locals 0

    return-void
.end method

.method public mediaSessionPositionChanged(Lorg/chromium/services/media_session/MediaPosition;)V
    .locals 0

    return-void
.end method

.method public mediaSessionStateChanged(ZZ)V
    .locals 0

    return-void
.end method

.method public final stopObserving()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content_public/browser/MediaSessionObserver;->mMediaSession:Lorg/chromium/content/browser/MediaSessionImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/MediaSessionImpl;->removeObserver(Lorg/chromium/content_public/browser/MediaSessionObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content_public/browser/MediaSessionObserver;->mMediaSession:Lorg/chromium/content/browser/MediaSessionImpl;

    return-void
.end method
