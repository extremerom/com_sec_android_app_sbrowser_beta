.class Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerBindObserverHostParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetEntryFromDataTransferTokenResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetEntryFromDataTransferTokenResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetEntryFromDataTransferTokenResponseParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetEntryFromDataTransferTokenParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetDirectoryHandleFromTokenParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetFileHandleFromTokenParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerChooseEntriesResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerChooseEntriesResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerChooseEntriesResponseParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerChooseEntriesParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetSandboxedFileSystemForDevtoolsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetSandboxedFileSystemForDevtoolsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetSandboxedFileSystemForDevtoolsResponseParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetSandboxedFileSystemForDevtoolsParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetSandboxedFileSystemResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetSandboxedFileSystemResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetSandboxedFileSystemResponseParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$FileSystemAccessManagerGetSandboxedFileSystemParams;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$Stub;,
        Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FileSystemAccessManager;",
            "Lorg/chromium/blink/mojom/FileSystemAccessManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
