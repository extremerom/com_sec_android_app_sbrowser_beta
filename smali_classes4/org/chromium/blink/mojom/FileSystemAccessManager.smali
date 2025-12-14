.class public interface abstract Lorg/chromium/blink/mojom/FileSystemAccessManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessManager$GetEntryFromDataTransferToken_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager$ChooseEntries_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager$GetSandboxedFileSystemForDevtools_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager$GetSandboxedFileSystem_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bindObserverHost(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/FileSystemAccessObserverHost;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract chooseEntries(Lorg/chromium/blink/mojom/FilePickerOptions;Lorg/chromium/blink/mojom/FileSystemAccessManager$ChooseEntries_Response;)V
.end method

.method public abstract getDirectoryHandleFromToken(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getEntryFromDataTransferToken(Lorg/chromium/blink/mojom/FileSystemAccessDataTransferToken;Lorg/chromium/blink/mojom/FileSystemAccessManager$GetEntryFromDataTransferToken_Response;)V
.end method

.method public abstract getFileHandleFromToken(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSandboxedFileSystem(Lorg/chromium/blink/mojom/FileSystemAccessManager$GetSandboxedFileSystem_Response;)V
.end method

.method public abstract getSandboxedFileSystemForDevtools([Ljava/lang/String;Lorg/chromium/blink/mojom/FileSystemAccessManager$GetSandboxedFileSystemForDevtools_Response;)V
.end method
