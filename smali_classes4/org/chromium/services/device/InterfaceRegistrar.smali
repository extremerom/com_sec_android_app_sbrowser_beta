.class Lorg/chromium/services/device/InterfaceRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static createInterfaceRegistryForContext(JLorg/chromium/device/nfc/NfcDelegate;)V
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

    sget-object p1, Lorg/chromium/device/mojom/BatteryMonitor;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v0, Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-direct {v0}, Lorg/chromium/device/battery/BatteryMonitorFactory;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    sget-object p1, Lorg/chromium/device/mojom/NfcProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v0, Lorg/chromium/device/nfc/NfcProviderImpl$Factory;

    invoke-direct {v0, p2}, Lorg/chromium/device/nfc/NfcProviderImpl$Factory;-><init>(Lorg/chromium/device/nfc/NfcDelegate;)V

    invoke-virtual {p0, p1, v0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    return-void
.end method
