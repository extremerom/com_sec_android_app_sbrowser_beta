.class Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal$FileSystemAccessDataTransferTokenCloneParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal$FileSystemAccessDataTransferTokenGetInternalIdResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal$FileSystemAccessDataTransferTokenGetInternalIdResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal$FileSystemAccessDataTransferTokenGetInternalIdResponseParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal$FileSystemAccessDataTransferTokenGetInternalIdParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal$Stub;,
        Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken;",
            "Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
