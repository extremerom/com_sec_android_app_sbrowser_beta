.class Lorg/chromium/media/VideoCaptureFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCaptureFormat$Format;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field final mFramerate:I

.field mHeight:I

.field final mPixelFormat:I

.field mWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    iput p2, p0, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    iput p3, p0, Lorg/chromium/media/VideoCaptureFormat;->mFramerate:I

    iput p4, p0, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    return-void
.end method


# virtual methods
.method public getFramerate()I
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->mFramerate:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    return p0
.end method

.method public getPixelFormat()I
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    return p0
.end method
