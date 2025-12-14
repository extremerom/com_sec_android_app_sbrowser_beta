.class Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostSetLengthResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostSetLengthResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostSetLengthResponseParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostSetLengthParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostGetLengthResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostGetLengthResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostGetLengthResponseParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostGetLengthParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostWriteResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostWriteResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostWriteResponseParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostWriteParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostReadResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostReadResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostReadResponseParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$FileSystemAccessFileDelegateHostReadParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost;",
            "Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessFileDelegateHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
