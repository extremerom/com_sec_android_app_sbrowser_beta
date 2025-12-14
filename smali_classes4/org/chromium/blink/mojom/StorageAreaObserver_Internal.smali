.class Lorg/chromium/blink/mojom/StorageAreaObserver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/StorageAreaObserver_Internal$StorageAreaObserverShouldSendOldValueOnMutationsParams;,
        Lorg/chromium/blink/mojom/StorageAreaObserver_Internal$StorageAreaObserverAllDeletedParams;,
        Lorg/chromium/blink/mojom/StorageAreaObserver_Internal$StorageAreaObserverKeyDeletedParams;,
        Lorg/chromium/blink/mojom/StorageAreaObserver_Internal$StorageAreaObserverKeyChangeFailedParams;,
        Lorg/chromium/blink/mojom/StorageAreaObserver_Internal$StorageAreaObserverKeyChangedParams;,
        Lorg/chromium/blink/mojom/StorageAreaObserver_Internal$Stub;,
        Lorg/chromium/blink/mojom/StorageAreaObserver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/StorageAreaObserver;",
            "Lorg/chromium/blink/mojom/StorageAreaObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/StorageAreaObserver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/StorageAreaObserver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/StorageAreaObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
