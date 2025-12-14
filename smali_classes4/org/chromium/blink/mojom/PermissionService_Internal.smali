.class Lorg/chromium/blink/mojom/PermissionService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceNotifyEventListenerParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPageEmbeddedPermissionObserverParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPermissionObserverParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRevokePermissionResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRevokePermissionResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRevokePermissionResponseParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRevokePermissionParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionsResponseParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionsParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionResponseParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPageEmbeddedPermissionResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPageEmbeddedPermissionResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPageEmbeddedPermissionResponseParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPageEmbeddedPermissionParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRegisterPageEmbeddedPermissionControlParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceHasPermissionResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceHasPermissionResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceHasPermissionResponseParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceHasPermissionParams;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$Stub;,
        Lorg/chromium/blink/mojom/PermissionService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/PermissionService;",
            "Lorg/chromium/blink/mojom/PermissionService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PermissionService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/PermissionService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
