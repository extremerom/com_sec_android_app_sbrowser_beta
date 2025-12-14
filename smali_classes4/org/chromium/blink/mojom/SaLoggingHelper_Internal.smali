.class Lorg/chromium/blink/mojom/SaLoggingHelper_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SaLoggingHelper_Internal$SaLoggingHelperLogStorageAccessPermissionRequestedParams;,
        Lorg/chromium/blink/mojom/SaLoggingHelper_Internal$SaLoggingHelperLogHasStorageAccessCalledParams;,
        Lorg/chromium/blink/mojom/SaLoggingHelper_Internal$SaLoggingHelperReportPatChallengeReceivedParams;,
        Lorg/chromium/blink/mojom/SaLoggingHelper_Internal$SaLoggingHelperReportWebAudioRandomizationAppliedParams;,
        Lorg/chromium/blink/mojom/SaLoggingHelper_Internal$SaLoggingHelperReportFixedFrameRemovedParams;,
        Lorg/chromium/blink/mojom/SaLoggingHelper_Internal$SaLoggingHelperCrossBrowsingContextNonEmptyNameAccessedParams;,
        Lorg/chromium/blink/mojom/SaLoggingHelper_Internal$Stub;,
        Lorg/chromium/blink/mojom/SaLoggingHelper_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/SaLoggingHelper;",
            "Lorg/chromium/blink/mojom/SaLoggingHelper$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/SaLoggingHelper_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/SaLoggingHelper_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/SaLoggingHelper_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
