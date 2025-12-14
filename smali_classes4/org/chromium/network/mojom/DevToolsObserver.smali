.class public interface abstract Lorg/chromium/network/mojom/DevToolsObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/DevToolsObserver$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/DevToolsObserver;",
            "Lorg/chromium/network/mojom/DevToolsObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/DevToolsObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/DevToolsObserver;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCorsError(Ljava/lang/String;Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/ClientSecurityState;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/CorsErrorStatus;Z)V
.end method

.method public abstract onCorsPreflightRequest(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/HttpRequestHeaders;Lorg/chromium/network/mojom/UrlRequestDevToolsInfo;Lorg/chromium/url/mojom/Url;Ljava/lang/String;)V
.end method

.method public abstract onCorsPreflightRequestCompleted(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;)V
.end method

.method public abstract onCorsPreflightResponse(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;)V
.end method

.method public abstract onEarlyHintsResponse(Ljava/lang/String;[Lorg/chromium/network/mojom/HttpRawHeaderPair;)V
.end method

.method public abstract onOrbError(Ljava/lang/String;Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract onPrivateNetworkRequest(Ljava/lang/String;Lorg/chromium/url/mojom/Url;ZILorg/chromium/network/mojom/ClientSecurityState;)V
.end method

.method public abstract onRawRequest(Ljava/lang/String;[Lorg/chromium/network/mojom/CookieWithAccessResult;[Lorg/chromium/network/mojom/HttpRawHeaderPair;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/network/mojom/ClientSecurityState;Lorg/chromium/network/mojom/OtherPartitionInfo;)V
.end method

.method public abstract onRawResponse(Ljava/lang/String;[Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;[Lorg/chromium/network/mojom/HttpRawHeaderPair;Ljava/lang/String;IILorg/chromium/network/mojom/CookiePartitionKey;)V
.end method

.method public abstract onSharedDictionaryError(Ljava/lang/String;Lorg/chromium/url/mojom/Url;I)V
.end method

.method public abstract onSriMessageSignatureIssue(Ljava/lang/String;Lorg/chromium/url/mojom/Url;[Lorg/chromium/network/mojom/SriMessageSignatureIssue;)V
.end method

.method public abstract onSubresourceWebBundleInnerResponse(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Ljava/lang/String;)V
.end method

.method public abstract onSubresourceWebBundleInnerResponseError(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSubresourceWebBundleMetadata(Ljava/lang/String;[Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract onSubresourceWebBundleMetadataError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onTrustTokenOperationDone(Ljava/lang/String;Lorg/chromium/network/mojom/TrustTokenOperationResult;)V
.end method
