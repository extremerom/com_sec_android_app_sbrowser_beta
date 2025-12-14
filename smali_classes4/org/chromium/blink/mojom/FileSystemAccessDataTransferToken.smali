.class public interface abstract Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken$GetInternalId_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken$Proxy;
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

    sget-object v0, Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getInternalId(Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken$GetInternalId_Response;)V
.end method
