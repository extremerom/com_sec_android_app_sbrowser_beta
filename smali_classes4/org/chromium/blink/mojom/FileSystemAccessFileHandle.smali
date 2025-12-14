.class public interface abstract Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$GetCloudIdentifiers_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$GetUniqueId_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$IsSameEntry_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$OpenAccessHandle_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$Remove_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$Move_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$Rename_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$CreateFileWriter_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$AsBlob_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$RequestPermission_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$GetPermissionStatus_Response;,
        Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;",
            "Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessFileHandle;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract asBlob(Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$AsBlob_Response;)V
.end method

.method public abstract createFileWriter(ZZILorg/chromium/blink/mojom/FileSystemAccessFileHandle$CreateFileWriter_Response;)V
.end method

.method public abstract getCloudIdentifiers(Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$GetCloudIdentifiers_Response;)V
.end method

.method public abstract getPermissionStatus(ZLorg/chromium/blink/mojom/FileSystemAccessFileHandle$GetPermissionStatus_Response;)V
.end method

.method public abstract getUniqueId(Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$GetUniqueId_Response;)V
.end method

.method public abstract isSameEntry(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$IsSameEntry_Response;)V
.end method

.method public abstract move(Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;Ljava/lang/String;Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$Move_Response;)V
.end method

.method public abstract openAccessHandle(ILorg/chromium/blink/mojom/FileSystemAccessFileHandle$OpenAccessHandle_Response;)V
.end method

.method public abstract remove(Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$Remove_Response;)V
.end method

.method public abstract rename(Ljava/lang/String;Lorg/chromium/blink/mojom/FileSystemAccessFileHandle$Rename_Response;)V
.end method

.method public abstract requestPermission(ZLorg/chromium/blink/mojom/FileSystemAccessFileHandle$RequestPermission_Response;)V
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
