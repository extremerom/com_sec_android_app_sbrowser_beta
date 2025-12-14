.class Lorg/chromium/media/MediaDrmBridge$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->removeSession([BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$promiseId:J

.field final synthetic val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

.field final synthetic val$sessionInfo:Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmBridge;JLorg/chromium/media/MediaDrmSessionManager$SessionId;Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$4;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-wide p2, p0, Lorg/chromium/media/MediaDrmBridge$4;->val$promiseId:J

    iput-object p4, p0, Lorg/chromium/media/MediaDrmBridge$4;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    iput-object p5, p0, Lorg/chromium/media/MediaDrmBridge$4;->val$sessionInfo:Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$4;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge$4;->val$promiseId:J

    const-wide/32 v3, 0x10c8e8

    const-string v5, "Fail to update persistent storage"

    invoke-static/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->i(Lorg/chromium/media/MediaDrmBridge;JJLjava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge$4;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$4;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$4;->val$sessionInfo:Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    invoke-virtual {v1}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mimeType()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge$4;->val$promiseId:J

    invoke-static {p1, v0, v1, v2, v3}, Lorg/chromium/media/MediaDrmBridge;->d(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge$4;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
