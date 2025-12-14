.class public Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecCreationInfo"
.end annotation


# instance fields
.field public bitrateAdjuster:I

.field public mediaCodec:Landroid/media/MediaCodec;

.field public supportsAdaptivePlayback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->bitrateAdjuster:I

    return-void
.end method
