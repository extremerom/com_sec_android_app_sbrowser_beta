.class public interface abstract Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback;",
            "Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/ServiceWorkerFetchResponseCallback;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onFallback(Lorg/chromium/network/mojom/DataElementChunkedDataPipe;Lorg/chromium/blink/mojom/ServiceWorkerFetchEventTiming;)V
.end method

.method public abstract onResponse(Lorg/chromium/blink/mojom/FetchApiResponse;Lorg/chromium/blink/mojom/ServiceWorkerFetchEventTiming;)V
.end method

.method public abstract onResponseStream(Lorg/chromium/blink/mojom/FetchApiResponse;Lorg/chromium/blink/mojom/ServiceWorkerStreamHandle;Lorg/chromium/blink/mojom/ServiceWorkerFetchEventTiming;)V
.end method
