.class Lorg/chromium/media/MediaDrmBridge$KeyStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyStatus"
.end annotation


# instance fields
.field private final mKeyId:[B

.field private final mStatusCode:I


# direct methods
.method private constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mKeyId:[B

    iput p2, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mStatusCode:I

    return-void
.end method

.method public synthetic constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge$KeyStatus;-><init>([BI)V

    return-void
.end method

.method private getKeyId()[B
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mKeyId:[B

    return-object p0
.end method

.method private getStatusCode()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mStatusCode:I

    return p0
.end method
