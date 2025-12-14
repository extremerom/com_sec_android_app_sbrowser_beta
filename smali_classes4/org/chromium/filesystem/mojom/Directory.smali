.class public interface abstract Lorg/chromium/filesystem/mojom/Directory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/filesystem/mojom/Directory$WriteFile_Response;,
        Lorg/chromium/filesystem/mojom/Directory$ReadEntireFile_Response;,
        Lorg/chromium/filesystem/mojom/Directory$StatFile_Response;,
        Lorg/chromium/filesystem/mojom/Directory$Flush_Response;,
        Lorg/chromium/filesystem/mojom/Directory$IsWritable_Response;,
        Lorg/chromium/filesystem/mojom/Directory$Exists_Response;,
        Lorg/chromium/filesystem/mojom/Directory$Delete_Response;,
        Lorg/chromium/filesystem/mojom/Directory$Replace_Response;,
        Lorg/chromium/filesystem/mojom/Directory$Rename_Response;,
        Lorg/chromium/filesystem/mojom/Directory$OpenDirectory_Response;,
        Lorg/chromium/filesystem/mojom/Directory$OpenFileHandles_Response;,
        Lorg/chromium/filesystem/mojom/Directory$OpenFileHandle_Response;,
        Lorg/chromium/filesystem/mojom/Directory$Read_Response;,
        Lorg/chromium/filesystem/mojom/Directory$Proxy;
    }
.end annotation


# virtual methods
.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/filesystem/mojom/Directory;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract delete(Ljava/lang/String;ILorg/chromium/filesystem/mojom/Directory$Delete_Response;)V
.end method

.method public abstract exists(Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$Exists_Response;)V
.end method

.method public abstract flush(Lorg/chromium/filesystem/mojom/Directory$Flush_Response;)V
.end method

.method public abstract isWritable(Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$IsWritable_Response;)V
.end method

.method public abstract openDirectory(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;ILorg/chromium/filesystem/mojom/Directory$OpenDirectory_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/filesystem/mojom/Directory;",
            ">;I",
            "Lorg/chromium/filesystem/mojom/Directory$OpenDirectory_Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract openFileHandle(Ljava/lang/String;ILorg/chromium/filesystem/mojom/Directory$OpenFileHandle_Response;)V
.end method

.method public abstract openFileHandles([Lorg/chromium/filesystem/mojom/FileOpenDetails;Lorg/chromium/filesystem/mojom/Directory$OpenFileHandles_Response;)V
.end method

.method public abstract read(Lorg/chromium/filesystem/mojom/Directory$Read_Response;)V
.end method

.method public abstract readEntireFile(Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$ReadEntireFile_Response;)V
.end method

.method public abstract rename(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$Rename_Response;)V
.end method

.method public abstract replace(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$Replace_Response;)V
.end method

.method public abstract statFile(Ljava/lang/String;Lorg/chromium/filesystem/mojom/Directory$StatFile_Response;)V
.end method

.method public abstract writeFile(Ljava/lang/String;[BLorg/chromium/filesystem/mojom/Directory$WriteFile_Response;)V
.end method
