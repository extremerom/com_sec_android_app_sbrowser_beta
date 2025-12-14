.class public Lorg/chromium/media/AudioManagerAndroid$AudioDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/AudioManagerAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioDevice"
.end annotation


# instance fields
.field private final mId:I

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDevice;->mId:I

    iput-object p2, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDevice;->mName:Ljava/lang/String;

    return-void
.end method

.method private id()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDevice;->mId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private name()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDevice;->mName:Ljava/lang/String;

    return-object p0
.end method
