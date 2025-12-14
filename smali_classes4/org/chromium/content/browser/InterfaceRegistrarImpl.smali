.class Lorg/chromium/content/browser/InterfaceRegistrarImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/InterfaceRegistrarImpl$SingletonInterfaceRegistrar;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sHasRegisteredRegistrars:Z


# direct methods
.method public static createInterfaceRegistry(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/InterfaceRegistrarImpl;->ensureSingletonRegistrarsAreRegistered()V

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/mojo/system/Core;->acquireNativeHandle(J)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->create(Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/services/service_manager/InterfaceRegistry;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content_public/browser/InterfaceRegistrar$Registry;->applySingletonRegistrars(Lorg/chromium/services/service_manager/InterfaceRegistry;)V

    return-void
.end method

.method public static createInterfaceRegistryForRenderFrameHost(JLorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/InterfaceRegistrarImpl;->ensureSingletonRegistrarsAreRegistered()V

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/mojo/system/Core;->acquireNativeHandle(J)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->create(Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/services/service_manager/InterfaceRegistry;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/chromium/content_public/browser/InterfaceRegistrar$Registry;->applyRenderFrameHostRegistrars(Lorg/chromium/services/service_manager/InterfaceRegistry;Lorg/chromium/content_public/browser/RenderFrameHost;)V

    return-void
.end method

.method public static createInterfaceRegistryForWebContents(JLorg/chromium/content_public/browser/WebContents;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/InterfaceRegistrarImpl;->ensureSingletonRegistrarsAreRegistered()V

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/mojo/system/Core;->acquireNativeHandle(J)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->create(Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/services/service_manager/InterfaceRegistry;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/chromium/content_public/browser/InterfaceRegistrar$Registry;->applyWebContentsRegistrars(Lorg/chromium/services/service_manager/InterfaceRegistry;Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public static createInterfaceRegistryOnIOThread(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/mojo/system/Core;->acquireNativeHandle(J)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->create(Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/services/service_manager/InterfaceRegistry;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/InterfaceRegistrarImpl;->registerInterfacesOnIOThread(Lorg/chromium/services/service_manager/InterfaceRegistry;)V

    return-void
.end method

.method private static ensureSingletonRegistrarsAreRegistered()V
    .locals 2

    sget-boolean v0, Lorg/chromium/content/browser/InterfaceRegistrarImpl;->sHasRegisteredRegistrars:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/content/browser/InterfaceRegistrarImpl;->sHasRegisteredRegistrars:Z

    new-instance v0, Lorg/chromium/content/browser/InterfaceRegistrarImpl$SingletonInterfaceRegistrar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/InterfaceRegistrarImpl$SingletonInterfaceRegistrar;-><init>(I)V

    invoke-static {v0}, Lorg/chromium/content_public/browser/InterfaceRegistrar$Registry;->addSingletonRegistrar(Lorg/chromium/content_public/browser/InterfaceRegistrar;)V

    return-void
.end method

.method private static registerInterfacesOnIOThread(Lorg/chromium/services/service_manager/InterfaceRegistry;)V
    .locals 2

    sget-object v0, Lorg/chromium/blink/mojom/AndroidFontLookup;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lorg/chromium/content/browser/font/AndroidFontLookupImpl$Factory;

    invoke-direct {v1}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl$Factory;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    return-void
.end method
