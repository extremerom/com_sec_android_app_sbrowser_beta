.class public interface abstract Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$CleanupDirectory_Response;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$GetFileInfo_Response;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$RenameFile_Response;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$DeleteFile_Response;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$OpenFile_Response;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$DirectoryExists_Response;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$PathExists_Response;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$CreateDirectory_Response;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$Proxy;
    }
.end annotation


# virtual methods
.method public abstract cleanupDirectory(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$CleanupDirectory_Response;)V
.end method

.method public abstract createDirectory(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$CreateDirectory_Response;)V
.end method

.method public abstract deleteFile(Lorg/chromium/mojo_base/mojom/FilePath;ILorg/chromium/network/mojom/HttpCacheBackendFileOperations$DeleteFile_Response;)V
.end method

.method public abstract directoryExists(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$DirectoryExists_Response;)V
.end method

.method public abstract enumerateFiles(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo_base/mojom/FilePath;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/FileEnumerator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFileInfo(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$GetFileInfo_Response;)V
.end method

.method public abstract openFile(Lorg/chromium/mojo_base/mojom/FilePath;ILorg/chromium/network/mojom/HttpCacheBackendFileOperations$OpenFile_Response;)V
.end method

.method public abstract pathExists(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$PathExists_Response;)V
.end method

.method public abstract renameFile(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$RenameFile_Response;)V
.end method
