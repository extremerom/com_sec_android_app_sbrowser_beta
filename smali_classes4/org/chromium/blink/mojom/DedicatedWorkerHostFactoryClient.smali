.class public interface abstract Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient;",
            "Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onScriptLoadStartFailed()V
.end method

.method public abstract onScriptLoadStarted(Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;",
            "Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;",
            "Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/SubresourceLoaderUpdater;",
            ">;",
            "Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;",
            "Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onWorkerHostCreated(Lorg/chromium/blink/mojom/BrowserInterfaceBroker;Lorg/chromium/blink/mojom/DedicatedWorkerHost;Lorg/chromium/url/internal/mojom/Origin;)V
.end method
