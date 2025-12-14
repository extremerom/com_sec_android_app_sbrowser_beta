.class public interface abstract Lorg/chromium/blink/mojom/WebViewMediaIntegrityService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityService$GetIntegrityProvider_Response;,
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityService$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/WebViewMediaIntegrityService;",
            "Lorg/chromium/blink/mojom/WebViewMediaIntegrityService$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_CLOUD_PROJECT_NUMBER:J = 0x1fffffffffffffL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/WebViewMediaIntegrityService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/WebViewMediaIntegrityService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract getIntegrityProvider(Lorg/chromium/mojo/bindings/InterfaceRequest;JLorg/chromium/blink/mojom/WebViewMediaIntegrityService$GetIntegrityProvider_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider;",
            ">;J",
            "Lorg/chromium/blink/mojom/WebViewMediaIntegrityService$GetIntegrityProvider_Response;",
            ")V"
        }
    .end annotation
.end method
