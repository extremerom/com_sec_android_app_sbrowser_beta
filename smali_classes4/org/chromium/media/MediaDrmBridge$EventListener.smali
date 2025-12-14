.class Lorg/chromium/media/MediaDrmBridge$EventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method private constructor <init>(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/media/MediaDrmBridge;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge$EventListener;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 2

    const-string p1, "media"

    if-nez p2, :cond_1

    const/4 p0, 0x1

    if-eq p3, p0, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "EventListener: No session for event %d."

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object p4, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {p4, p2}, Lorg/chromium/media/MediaDrmBridge;->f(Lorg/chromium/media/MediaDrmBridge;[B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p4

    if-nez p4, :cond_2

    const-string p0, "EventListener: Invalid session %s"

    invoke-static {p2}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p2, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {p2}, Lorg/chromium/media/MediaDrmBridge;->a(Lorg/chromium/media/MediaDrmBridge;)Lorg/chromium/media/MediaDrmSessionManager;

    move-result-object p2

    invoke-virtual {p2, p4}, Lorg/chromium/media/MediaDrmSessionManager;->get(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p0, "EventListener: No info for session %s"

    invoke-static {p1, p0, p4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v0, 0x2

    const-string v1, "EventListener: getKeyRequest failed."

    if-eq p3, v0, :cond_7

    const/4 v0, 0x3

    if-eq p3, v0, :cond_6

    const/4 v0, 0x4

    if-eq p3, v0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring MediaDrm event %d for session %s"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string p3, "MediaDrm.EVENT_VENDOR_DEFINED for session %s"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-virtual {p2}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->keyType()I

    move-result p2

    invoke-static {p3, p4, p5, v0, p2}, Lorg/chromium/media/MediaDrmBridge;->e(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BLjava/lang/String;I)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {p0, p4, p2}, Lorg/chromium/media/MediaDrmBridge;->n(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;Landroid/media/MediaDrm$KeyRequest;)V

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p0, "MediaDrm.EVENT_KEY_EXPIRED for session %s"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const-string p3, "MediaDrm.EVENT_KEY_REQUIRED for session %s"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-virtual {p2}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->keyType()I

    move-result p2

    invoke-static {p3, p4, p5, v0, p2}, Lorg/chromium/media/MediaDrmBridge;->e(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BLjava/lang/String;I)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {p0, p4, p2}, Lorg/chromium/media/MediaDrmBridge;->n(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmSessionManager$SessionId;Landroid/media/MediaDrm$KeyRequest;)V

    :goto_0
    return-void

    :cond_8
    invoke-static {p1, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
