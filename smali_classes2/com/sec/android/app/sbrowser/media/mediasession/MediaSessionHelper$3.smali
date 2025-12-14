.class Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;
.super Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->createMediaSessionObserver(Lcom/sec/terrace/content/browser/media/TerraceMediaSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Lcom/sec/terrace/content/browser/media/TerraceMediaSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-direct {p0, p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;-><init>(Lcom/sec/terrace/content/browser/media/TerraceMediaSession;)V

    return-void
.end method

.method private rebaseMediaPosition(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->i(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->i(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->i(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->getLastUpdatedTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->i(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->getPlaybackRate()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-long v4, v5

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->i(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->setPosition(J)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->i(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->setLastUpdatedTime(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->i(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->i(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->getPlaybackRate()F

    move-result p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->setPlaybackRate(F)V

    return-void
.end method


# virtual methods
.method public mediaSessionActionsChanged(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mediaSessionActionsChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MM]MediaSessionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->t(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Ljava/util/Set;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->I(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    return-void
.end method

.method public mediaSessionArtworkChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mediaSessionArtworkChanged count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MM]MediaSessionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->h(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->p(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/Terrace;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->downloadImage(Lcom/sec/terrace/Terrace;Ljava/util/List;Lcom/sec/android/app/sbrowser/media/ui/MediaImageCallback;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->J(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    return-void
.end method

.method public mediaSessionDestroyed()V
    .locals 2

    const-string v0, "[MM]MediaSessionHelper"

    const-string v1, "mediaSessionDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->D(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->x(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    return-void
.end method

.method public mediaSessionMetadataChanged(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)V
    .locals 4

    const-string v0, "metadata = "

    const-string v1, "Album = "

    const-string v2, "[MM]MediaSessionHelper"

    const-string v3, "mediaSessionMetadataChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Artist = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Base64 encoding fail "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->hasScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Title   : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->v(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->J(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    return-void
.end method

.method public mediaSessionPositionChanged(Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;)V
    .locals 2
    .param p1    # Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mediaSessionPositionChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MM]MediaSessionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;-><init>(Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->s(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->s(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->K(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    return-void
.end method

.method public mediaSessionStateChanged(ZZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mediaSessionStateChanged ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MM]MediaSessionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->C(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->c(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/media/common/IMediaParentImpl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->m(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->o(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/media/common/IMediaParentImpl;->createIntentToBringToFront(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->c(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->o(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->w(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Landroid/app/Activity;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->y(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->rebaseMediaPosition(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->B(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->r(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->A(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->q(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    new-instance v2, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->f(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setMetadata(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setPaused(Z)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->m(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setOrigin(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->o(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setTabId(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->p(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/Terrace;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->p(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/Terrace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/Terrace;->isIncognito()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setPrivate(Z)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p2

    const v2, 0x7f08070b

    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setNotificationSmallIcon(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->e(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setNotificationLargeIcon(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->n(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setMediaSessionImage(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p2

    const/4 v3, 0x5

    invoke-virtual {p2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setActions(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setContentIntent(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setContentPendingIntent(Landroid/app/PendingIntent;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p1

    const p2, 0x7f0b0701

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setId(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->d(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setListener(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->j(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setMediaSessionActions(Ljava/util/Set;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->i(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setMediaPosition(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->u(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->e(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->g(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->l(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setDefaultNotificationLargeIcon(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->H(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;->this$0:Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->z(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/app/Activity;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method
