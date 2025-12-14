.class Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCleanupDirectoryResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCleanupDirectoryResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCleanupDirectoryResponseParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCleanupDirectoryParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsEnumerateFilesParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsGetFileInfoResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsGetFileInfoResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsGetFileInfoResponseParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsGetFileInfoParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDeleteFileResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDeleteFileResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDeleteFileResponseParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDeleteFileParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsOpenFileResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsOpenFileResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsOpenFileResponseParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsOpenFileParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDirectoryExistsResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDirectoryExistsResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDirectoryExistsResponseParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsDirectoryExistsParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsPathExistsResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsPathExistsResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsPathExistsResponseParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsPathExistsParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCreateDirectoryResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCreateDirectoryResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCreateDirectoryResponseParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsCreateDirectoryParams;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$Stub;,
        Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/HttpCacheBackendFileOperations;",
            "Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
