.class Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostSetUnusedPreloadsParams;,
        Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostNotifyFetchedSubresourceParams;,
        Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostNotifyFetchedFontParams;,
        Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostSetPreconnectOriginsParams;,
        Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostSetLcpInfluencerScriptUrlsParams;,
        Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;,
        Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost;",
            "Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
