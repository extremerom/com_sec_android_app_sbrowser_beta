.class Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;->onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;

.field final synthetic val$drmSessionId:[B

.field final synthetic val$expirationTime:J

.field final synthetic val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;->this$1:Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    iput-object p3, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;->val$drmSessionId:[B

    iput-wide p4, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;->val$expirationTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    const-string v1, "media"

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;->val$drmSessionId:[B

    invoke-static {p0}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExpirationUpdate: Unknown session %s"

    invoke-static {v1, v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;->val$expirationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;->val$expirationTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "ExpirationUpdate(%s): %tF %tT"

    invoke-static {v1, v4, v0, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;->this$1:Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;

    iget-object v0, v0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;->val$sessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener$1;->val$expirationTime:J

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/media/MediaDrmBridge;->l(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;J)V

    return-void
.end method
