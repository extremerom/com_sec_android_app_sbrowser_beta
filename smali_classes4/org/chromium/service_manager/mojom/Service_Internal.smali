.class Lorg/chromium/service_manager/mojom/Service_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/service_manager/mojom/Service_Internal$ServiceCreatePackagedServiceInstanceParams;,
        Lorg/chromium/service_manager/mojom/Service_Internal$ServiceOnBindInterfaceResponseParamsProxyToResponder;,
        Lorg/chromium/service_manager/mojom/Service_Internal$ServiceOnBindInterfaceResponseParamsForwardToCallback;,
        Lorg/chromium/service_manager/mojom/Service_Internal$ServiceOnBindInterfaceResponseParams;,
        Lorg/chromium/service_manager/mojom/Service_Internal$ServiceOnBindInterfaceParams;,
        Lorg/chromium/service_manager/mojom/Service_Internal$ServiceOnStartResponseParamsProxyToResponder;,
        Lorg/chromium/service_manager/mojom/Service_Internal$ServiceOnStartResponseParamsForwardToCallback;,
        Lorg/chromium/service_manager/mojom/Service_Internal$ServiceOnStartResponseParams;,
        Lorg/chromium/service_manager/mojom/Service_Internal$ServiceOnStartParams;,
        Lorg/chromium/service_manager/mojom/Service_Internal$Stub;,
        Lorg/chromium/service_manager/mojom/Service_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/service_manager/mojom/Service;",
            "Lorg/chromium/service_manager/mojom/Service$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/service_manager/mojom/Service_Internal$1;

    invoke-direct {v0}, Lorg/chromium/service_manager/mojom/Service_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/service_manager/mojom/Service_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
