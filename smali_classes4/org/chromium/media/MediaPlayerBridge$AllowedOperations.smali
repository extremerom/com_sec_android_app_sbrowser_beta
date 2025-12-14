.class public Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaPlayerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllowedOperations"
.end annotation


# instance fields
.field private final mCanSeekBackward:Z

.field private final mCanSeekForward:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekForward:Z

    iput-boolean p2, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekBackward:Z

    return-void
.end method

.method private canSeekBackward()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekBackward:Z

    return p0
.end method

.method private canSeekForward()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekForward:Z

    return p0
.end method
