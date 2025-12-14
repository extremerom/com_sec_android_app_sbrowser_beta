.class Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/AudioTrackOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioBufferInfo"
.end annotation


# instance fields
.field private final mNumBytes:I

.field private final mNumFrames:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;->mNumFrames:I

    iput p2, p0, Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;->mNumBytes:I

    return-void
.end method


# virtual methods
.method public getNumBytes()I
    .locals 0

    iget p0, p0, Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;->mNumBytes:I

    return p0
.end method

.method public getNumFrames()I
    .locals 0

    iget p0, p0, Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;->mNumFrames:I

    return p0
.end method
