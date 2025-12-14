.class Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaCryptoDeferrer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mEventHandlers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsProvisioning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->mIsProvisioning:Z

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->mEventHandlers:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public defer(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->mEventHandlers:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isProvisioning()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->mIsProvisioning:Z

    return p0
.end method

.method public onProvisionDone()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->mIsProvisioning:Z

    :cond_0
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->mEventHandlers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "run deferred CreateMediaCrypto() calls"

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "media"

    invoke-static {v3, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->mEventHandlers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->mEventHandlers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->mIsProvisioning:Z

    if-eqz v1, :cond_0

    const-string p0, "provision triggered while running deferred CreateMediaCrypto()"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onProvisionStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge$MediaCryptoDeferrer;->mIsProvisioning:Z

    return-void
.end method
