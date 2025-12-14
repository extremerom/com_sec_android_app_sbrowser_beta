.class Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver_Internal$PlatformModelProgressObserverProgressParams;,
        Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver_Internal$Stub;,
        Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver;",
            "Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/on_device_model/mojom/PlatformModelProgressObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
