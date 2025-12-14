.class Lorg/chromium/media/MediaDrmSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaDrmSessionManager$SessionId;,
        Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDrmSessionInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/nio/ByteBuffer;",
            "Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmeSessionInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/nio/ByteBuffer;",
            "Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStorage:Lorg/chromium/media/MediaDrmStorageBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmStorageBridge;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mEmeSessionInfoMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mDrmSessionInfoMap:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/chromium/media/MediaDrmSessionManager;->mStorage:Lorg/chromium/media/MediaDrmStorageBridge;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/media/MediaDrmSessionManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mEmeSessionInfoMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private getSessionIdFromMap(Ljava/util/HashMap;[B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/nio/ByteBuffer;",
            "Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;",
            ">;[B)",
            "Lorg/chromium/media/MediaDrmSessionManager$SessionId;"
        }
    .end annotation

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->a(Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearPersistentSessionInfo(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Lorg/chromium/base/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/media/MediaDrmSessionManager$SessionId;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->b(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[B)V

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mStorage:Lorg/chromium/media/MediaDrmStorageBridge;

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->emeId()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/chromium/media/MediaDrmStorageBridge;->clearInfo([BLorg/chromium/base/Callback;)V

    return-void
.end method

.method public get(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mEmeSessionInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->emeId()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    return-object p0
.end method

.method public getAllSessionIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/media/MediaDrmSessionManager$SessionId;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mEmeSessionInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    invoke-static {v1}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->a(Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSessionIdByDrmId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mDrmSessionInfoMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1}, Lorg/chromium/media/MediaDrmSessionManager;->getSessionIdFromMap(Ljava/util/HashMap;[B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p0

    return-object p0
.end method

.method public getSessionIdByEmeId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;
    .locals 1

    iget-object v0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mEmeSessionInfoMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1}, Lorg/chromium/media/MediaDrmSessionManager;->getSessionIdFromMap(Ljava/util/HashMap;[B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p0

    return-object p0
.end method

.method public load([BLorg/chromium/base/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/media/MediaDrmSessionManager$SessionId;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mStorage:Lorg/chromium/media/MediaDrmStorageBridge;

    new-instance v1, Lorg/chromium/media/MediaDrmSessionManager$1;

    invoke-direct {v1, p0, p2}, Lorg/chromium/media/MediaDrmSessionManager$1;-><init>(Lorg/chromium/media/MediaDrmSessionManager;Lorg/chromium/base/Callback;)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/media/MediaDrmStorageBridge;->loadInfo([BLorg/chromium/base/Callback;)V

    return-void
.end method

.method public put(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;-><init>(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/String;II)V

    iget-object p2, p0, Lorg/chromium/media/MediaDrmSessionManager;->mEmeSessionInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->emeId()[B

    move-result-object p3

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->drmId()[B

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mDrmSessionInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->drmId()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public remove(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmSessionManager;->get(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    iget-object v0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mEmeSessionInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->emeId()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->drmId()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mDrmSessionInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->drmId()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setDrmId(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[B)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmSessionManager;->get(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->a(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[B)V

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mDrmSessionInfoMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setKeySetId(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[BLorg/chromium/base/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/media/MediaDrmSessionManager$SessionId;",
            "[B",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmSessionManager;->get(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->b(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[B)V

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mStorage:Lorg/chromium/media/MediaDrmStorageBridge;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->c(Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;)Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/chromium/media/MediaDrmStorageBridge;->saveInfo(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public setKeyType(Lorg/chromium/media/MediaDrmSessionManager$SessionId;ILorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/media/MediaDrmSessionManager$SessionId;",
            "I",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmSessionManager;->get(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->b(Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;I)V

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager;->mStorage:Lorg/chromium/media/MediaDrmStorageBridge;

    invoke-static {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->c(Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;)Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/chromium/media/MediaDrmStorageBridge;->saveInfo(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;Lorg/chromium/base/Callback;)V

    return-void
.end method
