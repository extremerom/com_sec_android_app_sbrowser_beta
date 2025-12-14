.class Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal$ServiceManagerListenerOnServiceStoppedParams;,
        Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal$ServiceManagerListenerOnServiceFailedToStartParams;,
        Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal$ServiceManagerListenerOnServicePidReceivedParams;,
        Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal$ServiceManagerListenerOnServiceStartedParams;,
        Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal$ServiceManagerListenerOnServiceCreatedParams;,
        Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal$ServiceManagerListenerOnInitParams;,
        Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal$Stub;,
        Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/service_manager/mojom/ServiceManagerListener;",
            "Lorg/chromium/service_manager/mojom/ServiceManagerListener$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal$1;

    invoke-direct {v0}, Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/service_manager/mojom/ServiceManagerListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
