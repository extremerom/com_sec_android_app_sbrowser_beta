.class Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmStorageBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentInfo"
.end annotation


# instance fields
.field private final mEmeId:[B

.field private final mKeySetId:[B

.field private final mKeyType:I

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>([B[BLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->mEmeId:[B

    iput-object p2, p0, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->mKeySetId:[B

    iput-object p3, p0, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->mMimeType:Ljava/lang/String;

    iput p4, p0, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->mKeyType:I

    return-void
.end method

.method private static create([B[BLjava/lang/String;I)Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;-><init>([B[BLjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public emeId()[B
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->mEmeId:[B

    return-object p0
.end method

.method public keySetId()[B
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->mKeySetId:[B

    return-object p0
.end method

.method public keyType()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->mKeyType:I

    return p0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;->mMimeType:Ljava/lang/String;

    return-object p0
.end method
