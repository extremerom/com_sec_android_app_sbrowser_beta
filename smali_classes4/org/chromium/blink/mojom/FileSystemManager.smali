.class public interface abstract Lorg/chromium/blink/mojom/FileSystemManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemManager$RegisterBlob_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$GetPlatformPath_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$CreateSnapshotFile_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$TruncateSync_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$Truncate_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$WriteSync_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$ReadDirectorySync_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$Exists_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$Create_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$ReadMetadata_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$Remove_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$Copy_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$Move_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$ResolveUrl_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$Open_Response;,
        Lorg/chromium/blink/mojom/FileSystemManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract copy(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$Copy_Response;)V
.end method

.method public abstract create(Lorg/chromium/url/mojom/Url;ZZZLorg/chromium/blink/mojom/FileSystemManager$Create_Response;)V
.end method

.method public abstract createSnapshotFile(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$CreateSnapshotFile_Response;)V
.end method

.method public abstract exists(Lorg/chromium/url/mojom/Url;ZLorg/chromium/blink/mojom/FileSystemManager$Exists_Response;)V
.end method

.method public abstract getPlatformPath(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$GetPlatformPath_Response;)V
.end method

.method public abstract move(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$Move_Response;)V
.end method

.method public abstract open(Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/blink/mojom/FileSystemManager$Open_Response;)V
.end method

.method public abstract readDirectory(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemOperationListener;)V
.end method

.method public abstract readDirectorySync(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$ReadDirectorySync_Response;)V
.end method

.method public abstract readMetadata(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$ReadMetadata_Response;)V
.end method

.method public abstract registerBlob(Ljava/lang/String;Lorg/chromium/url/mojom/Url;JLorg/chromium/mojo_base/mojom/Time;Lorg/chromium/blink/mojom/FileSystemManager$RegisterBlob_Response;)V
.end method

.method public abstract remove(Lorg/chromium/url/mojom/Url;ZLorg/chromium/blink/mojom/FileSystemManager$Remove_Response;)V
.end method

.method public abstract resolveUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FileSystemManager$ResolveUrl_Response;)V
.end method

.method public abstract truncate(Lorg/chromium/url/mojom/Url;JLorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/FileSystemManager$Truncate_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/url/mojom/Url;",
            "J",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/FileSystemCancellableOperation;",
            ">;",
            "Lorg/chromium/blink/mojom/FileSystemManager$Truncate_Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract truncateSync(Lorg/chromium/url/mojom/Url;JLorg/chromium/blink/mojom/FileSystemManager$TruncateSync_Response;)V
.end method

.method public abstract write(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/Blob;JLorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/FileSystemOperationListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/url/mojom/Url;",
            "Lorg/chromium/blink/mojom/Blob;",
            "J",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/FileSystemCancellableOperation;",
            ">;",
            "Lorg/chromium/blink/mojom/FileSystemOperationListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract writeSync(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/Blob;JLorg/chromium/blink/mojom/FileSystemManager$WriteSync_Response;)V
.end method
