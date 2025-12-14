.class Lorg/chromium/device/mojom/HidManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerAddReceiverParams;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectResponseParams;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesResponseParams;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesParams;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesAndSetClientResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesAndSetClientResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesAndSetClientResponseParams;,
        Lorg/chromium/device/mojom/HidManager_Internal$HidManagerGetDevicesAndSetClientParams;,
        Lorg/chromium/device/mojom/HidManager_Internal$Stub;,
        Lorg/chromium/device/mojom/HidManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/HidManager;",
            "Lorg/chromium/device/mojom/HidManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/HidManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/HidManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/HidManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
