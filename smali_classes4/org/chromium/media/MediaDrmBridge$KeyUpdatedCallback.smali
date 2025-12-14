.class Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyUpdatedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIsKeyRelease:Z

.field private final mPromiseId:J

.field private final mSessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;JZ)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->mSessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    iput-wide p3, p0, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->mPromiseId:J

    iput-boolean p5, p0, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->mIsKeyRelease:Z

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->mPromiseId:J

    const-wide/32 v3, 0x10c8ea

    const-string v5, "failed to update key after response accepted"

    invoke-static/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->i(Lorg/chromium/media/MediaDrmBridge;JJLjava/lang/String;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->mIsKeyRelease:Z

    if-eqz p1, :cond_1

    const-string p1, "released"

    goto :goto_0

    :cond_1
    const-string p1, "added"

    :goto_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->mSessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    const-string v1, "media"

    const-string v2, "Key successfully %s for session %s"

    invoke-static {v1, v2, p1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->mPromiseId:J

    invoke-static {p1, v0, v1}, Lorg/chromium/media/MediaDrmBridge;->j(Lorg/chromium/media/MediaDrmBridge;J)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge$KeyUpdatedCallback;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
