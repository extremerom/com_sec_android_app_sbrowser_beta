.class Lorg/chromium/media/MediaDrmSessionManager$SessionId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionId"
.end annotation


# static fields
.field private static final HEX_CHAR_LOOKUP:[C


# instance fields
.field private mDrmId:[B

.field private final mEmeId:[B

.field private mKeySetId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->HEX_CHAR_LOOKUP:[C

    return-void
.end method

.method public synthetic constructor <init>([B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;-><init>([B[B[B)V

    return-void
.end method

.method private constructor <init>([B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->mEmeId:[B

    iput-object p2, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->mDrmId:[B

    iput-object p3, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->mKeySetId:[B

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->setDrmId([B)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/media/MediaDrmSessionManager$SessionId;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->setKeySetId([B)V

    return-void
.end method

.method public static createNoExistSessionId()Lorg/chromium/media/MediaDrmSessionManager$SessionId;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->createTemporarySessionId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    move-result-object v0

    return-object v0
.end method

.method public static createPersistentSessionId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;-><init>([B[B[B)V

    return-object v1
.end method

.method public static createTemporarySessionId([B)Lorg/chromium/media/MediaDrmSessionManager$SessionId;
    .locals 2

    new-instance v0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;-><init>([B[B[B)V

    return-object v0
.end method

.method private setDrmId([B)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->mDrmId:[B

    return-void
.end method

.method private setKeySetId([B)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->mKeySetId:[B

    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    sget-object v2, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->HEX_CHAR_LOOKUP:[C

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public drmId()[B
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->mDrmId:[B

    return-object p0
.end method

.method public emeId()[B
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->mEmeId:[B

    return-object p0
.end method

.method public isEqual(Lorg/chromium/media/MediaDrmSessionManager$SessionId;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->mEmeId:[B

    invoke-virtual {p1}, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->emeId()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public keySetId()[B
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->mKeySetId:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/media/MediaDrmSessionManager$SessionId;->mEmeId:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
