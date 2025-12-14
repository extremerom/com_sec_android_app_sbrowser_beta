.class Lorg/chromium/media/mojom/WatchTimeRecorder_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$WatchTimeRecorderUpdateUnderflowDurationParams;,
        Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$WatchTimeRecorderUpdateUnderflowCountParams;,
        Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$WatchTimeRecorderUpdateVideoDecodeStatsParams;,
        Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$WatchTimeRecorderOnDurationChangedParams;,
        Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$WatchTimeRecorderSetAutoplayInitiatedParams;,
        Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$WatchTimeRecorderUpdateSecondaryPropertiesParams;,
        Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$WatchTimeRecorderOnErrorParams;,
        Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$WatchTimeRecorderFinalizeWatchTimeParams;,
        Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$WatchTimeRecorderRecordWatchTimeParams;,
        Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$Stub;,
        Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/WatchTimeRecorder;",
            "Lorg/chromium/media/mojom/WatchTimeRecorder$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/WatchTimeRecorder_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/WatchTimeRecorder_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
