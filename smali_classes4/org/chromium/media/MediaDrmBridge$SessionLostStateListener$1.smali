.class Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;->onSessionLostState(Landroid/media/MediaDrm;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;

.field final synthetic val$drmSessionId:[B

.field final synthetic val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;Lorg/chromium/media/MediaDrmSessionManager$SessionId;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener$1;->this$1:Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    iput-object p3, p0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener$1;->val$drmSessionId:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    const-string v1, "media"

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener$1;->val$drmSessionId:[B

    invoke-static {p0}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SessionLost: Unknown session %s"

    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SessionLost: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener$1;->this$1:Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;

    iget-object v0, v0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$SessionLostStateListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    invoke-static {v0, p0}, Lorg/chromium/media/MediaDrmBridge;->k(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V

    return-void
.end method
