.class Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;->onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;

.field final synthetic val$drmSessionId:[B

.field final synthetic val$hasNewUsableKey:Z

.field final synthetic val$keyInformation:Ljava/util/List;

.field final synthetic val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->this$1:Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    iput-object p3, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$drmSessionId:[B

    iput-boolean p4, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$hasNewUsableKey:Z

    iput-object p5, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$keyInformation:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    const-string v1, "media"

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$drmSessionId:[B

    invoke-static {p0}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyStatusChange: Unknown session %s"

    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->this$1:Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;

    iget-object v0, v0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->a(Lorg/chromium/media/MediaDrmBridge;)Lorg/chromium/media/MediaDrmSessionManager;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    invoke-virtual {v0, v2}, Lorg/chromium/media/MediaDrmSessionManager;->get(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "KeyStatusChange: No info for session %s"

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->keyType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    iget-boolean v3, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$hasNewUsableKey:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "KeysStatusChange(%s): %b"

    invoke-static {v1, v4, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->this$1:Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;

    iget-object v2, v1, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$keyInformation:Ljava/util/List;

    invoke-static {v1, v4}, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;->a(Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    iget-boolean p0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener$1;->val$hasNewUsableKey:Z

    invoke-static {v2, v3, v1, p0, v0}, Lorg/chromium/media/MediaDrmBridge;->m(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;[Ljava/lang/Object;ZZ)V

    return-void
.end method
