.class Lorg/chromium/blink/mojom/SubAppsService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceRemoveResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceRemoveResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceRemoveResponseParams;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceRemoveParams;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceListResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceListResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceListResponseParams;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceListParams;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceAddResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceAddResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceAddResponseParams;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$SubAppsServiceAddParams;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$Stub;,
        Lorg/chromium/blink/mojom/SubAppsService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/SubAppsService;",
            "Lorg/chromium/blink/mojom/SubAppsService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/SubAppsService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/SubAppsService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/SubAppsService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
