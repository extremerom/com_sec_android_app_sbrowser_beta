.class Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver$1;
.super Lorg/chromium/content_public/browser/MediaSessionObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;-><init>(Lcom/sec/terrace/content/browser/media/TerraceMediaSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;Lorg/chromium/content_public/browser/MediaSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver$1;->this$0:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/MediaSessionObserver;-><init>(Lorg/chromium/content_public/browser/MediaSession;)V

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

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver$1;->this$0:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mediaSessionActionsChanged(Ljava/util/Set;)V

    return-void
.end method

.method public mediaSessionArtworkChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/services/media_session/MediaImage;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/services/media_session/MediaImage;

    new-instance v2, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;

    invoke-direct {v2, v1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;-><init>(Lorg/chromium/services/media_session/MediaImage;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver$1;->this$0:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mediaSessionArtworkChanged(Ljava/util/List;)V

    return-void
.end method

.method public mediaSessionDestroyed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver$1;->this$0:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mediaSessionDestroyed()V

    return-void
.end method

.method public mediaSessionMetadataChanged(Lorg/chromium/services/media_session/MediaMetadata;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver$1;->this$0:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    new-instance v0, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-direct {v0, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;-><init>(Lorg/chromium/services/media_session/MediaMetadata;)V

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mediaSessionMetadataChanged(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)V

    return-void
.end method

.method public mediaSessionPositionChanged(Lorg/chromium/services/media_session/MediaPosition;)V
    .locals 1
    .param p1    # Lorg/chromium/services/media_session/MediaPosition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver$1;->this$0:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    new-instance v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;

    invoke-direct {v0, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;-><init>(Lorg/chromium/services/media_session/MediaPosition;)V

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mediaSessionPositionChanged(Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;)V

    return-void
.end method

.method public mediaSessionStateChanged(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver$1;->this$0:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->mediaSessionStateChanged(ZZ)V

    return-void
.end method
