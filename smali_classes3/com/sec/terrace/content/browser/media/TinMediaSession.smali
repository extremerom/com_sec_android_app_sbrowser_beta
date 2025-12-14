.class Lcom/sec/terrace/content/browser/media/TinMediaSession;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mMediaSession:Lorg/chromium/content_public/browser/MediaSession;


# direct methods
.method private constructor <init>(Lorg/chromium/content_public/browser/MediaSession;)V
    .locals 0
    .param p1    # Lorg/chromium/content_public/browser/MediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TinMediaSession;->mMediaSession:Lorg/chromium/content_public/browser/MediaSession;

    return-void
.end method

.method public static createTinMediaSession(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/media/TinMediaSession;
    .locals 1

    invoke-static {p0}, Lorg/chromium/content_public/browser/MediaSession;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/MediaSession;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/terrace/content/browser/media/TinMediaSession;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/media/TinMediaSession;-><init>(Lorg/chromium/content_public/browser/MediaSession;)V

    return-object v0
.end method

.method public static makeTinMediaSession(Lorg/chromium/content_public/browser/MediaSession;)Lcom/sec/terrace/content/browser/media/TinMediaSession;
    .locals 1

    new-instance v0, Lcom/sec/terrace/content/browser/media/TinMediaSession;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/media/TinMediaSession;-><init>(Lorg/chromium/content_public/browser/MediaSession;)V

    return-object v0
.end method


# virtual methods
.method public didReceiveAction(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinMediaSession;->mMediaSession:Lorg/chromium/content_public/browser/MediaSession;

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/MediaSession;->didReceiveAction(I)V

    return-void
.end method

.method public getMediaSession()Lorg/chromium/content_public/browser/MediaSession;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinMediaSession;->mMediaSession:Lorg/chromium/content_public/browser/MediaSession;

    return-object p0
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinMediaSession;->mMediaSession:Lorg/chromium/content_public/browser/MediaSession;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/MediaSession;->resume()V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinMediaSession;->mMediaSession:Lorg/chromium/content_public/browser/MediaSession;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content_public/browser/MediaSession;->seekTo(J)V

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinMediaSession;->mMediaSession:Lorg/chromium/content_public/browser/MediaSession;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/MediaSession;->stop()V

    return-void
.end method

.method public suspend()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinMediaSession;->mMediaSession:Lorg/chromium/content_public/browser/MediaSession;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/MediaSession;->suspend()V

    return-void
.end method
