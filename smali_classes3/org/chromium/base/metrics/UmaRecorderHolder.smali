.class public Lorg/chromium/base/metrics/UmaRecorderHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sNativeInitialized:Z

.field private static sRecorder:Lorg/chromium/base/metrics/CachingUmaRecorder;

.field private static sSetUpNativeUmaRecorder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/base/metrics/CachingUmaRecorder;

    invoke-direct {v0}, Lorg/chromium/base/metrics/CachingUmaRecorder;-><init>()V

    sput-object v0, Lorg/chromium/base/metrics/UmaRecorderHolder;->sRecorder:Lorg/chromium/base/metrics/CachingUmaRecorder;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/metrics/UmaRecorderHolder;->sSetUpNativeUmaRecorder:Z

    return-void
.end method

.method public static get()Lorg/chromium/base/metrics/UmaRecorder;
    .locals 1

    sget-object v0, Lorg/chromium/base/metrics/UmaRecorderHolder;->sRecorder:Lorg/chromium/base/metrics/CachingUmaRecorder;

    return-object v0
.end method

.method public static onLibraryLoaded()V
    .locals 2

    sget-boolean v0, Lorg/chromium/base/metrics/UmaRecorderHolder;->sSetUpNativeUmaRecorder:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/metrics/UmaRecorderHolder;->sNativeInitialized:Z

    sget-object v0, Lorg/chromium/base/metrics/UmaRecorderHolder;->sRecorder:Lorg/chromium/base/metrics/CachingUmaRecorder;

    new-instance v1, Lorg/chromium/base/metrics/NativeUmaRecorder;

    invoke-direct {v1}, Lorg/chromium/base/metrics/NativeUmaRecorder;-><init>()V

    invoke-virtual {v0, v1}, Lorg/chromium/base/metrics/CachingUmaRecorder;->setDelegate(Lorg/chromium/base/metrics/UmaRecorder;)Lorg/chromium/base/metrics/UmaRecorder;

    return-void
.end method
