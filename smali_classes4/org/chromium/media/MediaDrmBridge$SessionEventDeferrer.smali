.class Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionEventDeferrer"
.end annotation


# instance fields
.field private final mEventHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;->mSessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;->mEventHandlers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public defer(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;->mEventHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fire()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;->mEventHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;->mEventHandlers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public shouldDefer(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$SessionEventDeferrer;->mSessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->isEqual(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Z

    move-result p0

    return p0
.end method
