.class Lorg/chromium/media/MediaCodecUtilJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/MediaCodecUtil$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/media/MediaCodecUtil$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/media/MediaCodecUtilJni;

    invoke-direct {v0}, Lorg/chromium/media/MediaCodecUtilJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isDecoderSupportedForDevice(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->Ma9YTBDp(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
