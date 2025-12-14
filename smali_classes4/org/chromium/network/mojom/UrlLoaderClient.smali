.class public interface abstract Lorg/chromium/network/mojom/UrlLoaderClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/UrlLoaderClient$OnUploadProgress_Response;,
        Lorg/chromium/network/mojom/UrlLoaderClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/UrlLoaderClient;",
            "Lorg/chromium/network/mojom/UrlLoaderClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/UrlLoaderClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onComplete(Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;)V
.end method

.method public abstract onReceiveEarlyHints(Lorg/chromium/network/mojom/EarlyHints;)V
.end method

.method public abstract onReceiveRedirect(Lorg/chromium/network/mojom/UrlRequestRedirectInfo;Lorg/chromium/network/mojom/UrlResponseHead;)V
.end method

.method public abstract onReceiveResponse(Lorg/chromium/network/mojom/UrlResponseHead;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo_base/mojom/BigBuffer;)V
.end method

.method public abstract onTransferSizeUpdated(I)V
.end method

.method public abstract onUploadProgress(JJLorg/chromium/network/mojom/UrlLoaderClient$OnUploadProgress_Response;)V
.end method
