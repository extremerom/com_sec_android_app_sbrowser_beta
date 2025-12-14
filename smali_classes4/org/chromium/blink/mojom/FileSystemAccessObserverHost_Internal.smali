.class Lorg/chromium/blink/mojom/FileSystemAccessObserverHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessObserverHost_Internal$FileSystemAccessObserverHostUnobserveParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessObserverHost_Internal$FileSystemAccessObserverHostObserveResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileSystemAccessObserverHost_Internal$FileSystemAccessObserverHostObserveResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileSystemAccessObserverHost_Internal$FileSystemAccessObserverHostObserveResponseParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessObserverHost_Internal$FileSystemAccessObserverHostObserveParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessObserverHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/FileSystemAccessObserverHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileSystemAccessObserverHost;",
            "Lorg/chromium/blink/mojom/FileSystemAccessObserverHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessObserverHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessObserverHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessObserverHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
