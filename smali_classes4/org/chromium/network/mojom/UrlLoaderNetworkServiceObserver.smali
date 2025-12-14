.class public interface abstract Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnSharedStorageHeaderReceived_Response;,
        Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnLoadingStateUpdate_Response;,
        Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnClearSiteData_Response;,
        Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnLocalNetworkAccessPermissionRequired_Response;,
        Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnPrivateNetworkAccessPermissionRequired_Response;,
        Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnSslCertificateError_Response;,
        Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;",
            "Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAdAuctionEventRecordHeaderReceived(Lorg/chromium/network/mojom/AdAuctionEventRecord;)V
.end method

.method public abstract onAuthRequired(Lorg/chromium/mojo_base/mojom/UnguessableToken;ILorg/chromium/url/mojom/Url;ZLorg/chromium/network/mojom/AuthChallengeInfo;Lorg/chromium/network/mojom/HttpResponseHeaders;Lorg/chromium/network/mojom/AuthChallengeResponder;)V
.end method

.method public abstract onCertificateRequested(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/SslCertRequestInfo;Lorg/chromium/network/mojom/ClientCertificateResponder;)V
.end method

.method public abstract onClearSiteData(Lorg/chromium/url/mojom/Url;Ljava/lang/String;ILorg/chromium/network/mojom/CookiePartitionKey;ZLorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnClearSiteData_Response;)V
.end method

.method public abstract onDataUseUpdate(IJJ)V
.end method

.method public abstract onLoadingStateUpdate(Lorg/chromium/network/mojom/LoadInfo;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnLoadingStateUpdate_Response;)V
.end method

.method public abstract onLocalNetworkAccessPermissionRequired(Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnLocalNetworkAccessPermissionRequired_Response;)V
.end method

.method public abstract onPrivateNetworkAccessPermissionRequired(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/IpAddress;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnPrivateNetworkAccessPermissionRequired_Response;)V
.end method

.method public abstract onSharedStorageHeaderReceived(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/SharedStorageBatchUpdateMethodsArgument;Lorg/chromium/network/mojom/LockName;Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnSharedStorageHeaderReceived_Response;)V
.end method

.method public abstract onSslCertificateError(Lorg/chromium/url/mojom/Url;ILorg/chromium/network/mojom/SslInfo;ZLorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver$OnSslCertificateError_Response;)V
.end method

.method public abstract onUrlLoaderConnectedToPrivateNetwork(Lorg/chromium/url/mojom/Url;III)V
.end method

.method public abstract onWebSocketConnectedToPrivateNetwork(I)V
.end method
