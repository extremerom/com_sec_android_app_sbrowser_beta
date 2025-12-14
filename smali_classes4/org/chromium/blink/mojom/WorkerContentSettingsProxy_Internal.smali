.class Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyRequestFileSystemAccessSyncResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyRequestFileSystemAccessSyncResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyRequestFileSystemAccessSyncResponseParams;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyRequestFileSystemAccessSyncParams;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowWebLocksResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowWebLocksResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowWebLocksResponseParams;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowWebLocksParams;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowCacheStorageResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowCacheStorageResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowCacheStorageResponseParams;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowCacheStorageParams;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowIndexedDbResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowIndexedDbResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowIndexedDbResponseParams;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$WorkerContentSettingsProxyAllowIndexedDbParams;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$Stub;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;",
            "Lorg/chromium/blink/mojom/WorkerContentSettingsProxy$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
