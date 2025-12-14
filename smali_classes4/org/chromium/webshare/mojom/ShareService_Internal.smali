.class Lorg/chromium/webshare/mojom/ShareService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareResponseParamsProxyToResponder;,
        Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareResponseParamsForwardToCallback;,
        Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareResponseParams;,
        Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareParams;,
        Lorg/chromium/webshare/mojom/ShareService_Internal$Stub;,
        Lorg/chromium/webshare/mojom/ShareService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/webshare/mojom/ShareService;",
            "Lorg/chromium/webshare/mojom/ShareService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/webshare/mojom/ShareService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/webshare/mojom/ShareService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/webshare/mojom/ShareService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
