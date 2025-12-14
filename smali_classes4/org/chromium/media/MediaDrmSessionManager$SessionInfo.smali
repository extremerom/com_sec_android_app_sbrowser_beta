.class Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionInfo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mKeyType:I

.field private final mMimeType:Ljava/lang/String;

.field private final mSessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;


# direct methods
.method private constructor <init>(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mSessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mMimeType:Ljava/lang/String;

    iput p3, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mKeyType:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;-><init>(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;)Lorg/chromium/media/MediaDrmSessionManager$SessionId;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->sessionId()Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->setKeyType(I)V

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;)Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->toPersistentInfo()Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;
    .locals 0

    invoke-static {p0}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->fromPersistentInfo(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    move-result-object p0

    return-object p0
.end method

.method private static fromPersistentInfo(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;)Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;
    .locals 3

    new-instance v0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->emeId()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->keySetId()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;-><init>([B[B)V

    new-instance v1, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;

    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->getKeyTypeFromPersistentInfo(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;)I

    move-result p0

    invoke-direct {v1, v0, v2, p0}, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;-><init>(Lorg/chromium/media/MediaDrmSessionManager$SessionId;Ljava/lang/String;I)V

    return-object v1
.end method

.method private static getKeyTypeFromPersistentInfo(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;)I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->keyType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return p0
.end method

.method private sessionId()Lorg/chromium/media/MediaDrmSessionManager$SessionId;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mSessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    return-object p0
.end method

.method private setKeyType(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mKeyType:I

    return-void
.end method

.method private toPersistentInfo()Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;
    .locals 4

    new-instance v0, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mSessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    invoke-virtual {v1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->emeId()[B

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mSessionId:Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    invoke-virtual {v2}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->keySetId()[B

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mMimeType:Ljava/lang/String;

    iget p0, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mKeyType:I

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;-><init>([B[BLjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public keyType()I
    .locals 0

    iget p0, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mKeyType:I

    return p0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionInfo;->mMimeType:Ljava/lang/String;

    return-object p0
.end method
