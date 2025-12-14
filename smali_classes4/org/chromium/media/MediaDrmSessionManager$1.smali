.class Lorg/chromium/media/MediaDrmSessionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmSessionManager;->load([BLorg/chromium/base/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmSessionManager;

.field final synthetic val$callback:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmSessionManager;Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/media/MediaDrmSessionManager$1;->this$0:Lorg/chromium/media/MediaDrmSessionManager;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmSessionManager$1;->val$callback:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmSessionManager$1;->onResult(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;)V

    return-void
.end method

.method public onResult(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager$1;->val$callback:Lorg/chromium/base/Callback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->d(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/MediaDrmSessionManager$1;->this$0:Lorg/chromium/media/MediaDrmSessionManager;

    invoke-static {v1}, Lorg/chromium/media/MediaDrmSessionManager;->a(Lorg/chromium/media/MediaDrmSessionManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->emeId()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager$1;->val$callback:Lorg/chromium/base/Callback;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->a(Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
