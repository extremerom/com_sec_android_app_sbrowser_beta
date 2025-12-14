.class public interface abstract Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetCloudIdentifiers_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetUniqueId_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Resolve_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$RemoveEntry_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Remove_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Move_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Rename_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetDirectory_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetFile_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$RequestPermission_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetPermissionStatus_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;",
            "Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract getCloudIdentifiers(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetCloudIdentifiers_Response;)V
.end method

.method public abstract getDirectory(Ljava/lang/String;ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetDirectory_Response;)V
.end method

.method public abstract getEntries(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryEntriesListener;)V
.end method

.method public abstract getFile(Ljava/lang/String;ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetFile_Response;)V
.end method

.method public abstract getPermissionStatus(ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetPermissionStatus_Response;)V
.end method

.method public abstract getUniqueId(Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$GetUniqueId_Response;)V
.end method

.method public abstract move(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Ljava/lang/String;Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Move_Response;)V
.end method

.method public abstract remove(ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Remove_Response;)V
.end method

.method public abstract removeEntry(Ljava/lang/String;ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$RemoveEntry_Response;)V
.end method

.method public abstract rename(Ljava/lang/String;Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Rename_Response;)V
.end method

.method public abstract requestPermission(ZLorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$RequestPermission_Response;)V
.end method

.method public abstract resolve(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Lorg/chromium/blink/mojom/FileSystemAccessDirectoryHandle$Resolve_Response;)V
.end method

.method public abstract transfer(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;",
            ">;)V"
        }
    .end annotation
.end method
