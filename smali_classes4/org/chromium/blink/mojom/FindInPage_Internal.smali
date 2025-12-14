.class Lorg/chromium/blink/mojom/FindInPage_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageFindMatchRectsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageFindMatchRectsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageFindMatchRectsResponseParams;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageFindMatchRectsParams;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageActivateNearestFindResultParams;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageGetNearestFindResultResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageGetNearestFindResultResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageGetNearestFindResultResponseParams;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageGetNearestFindResultParams;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageSetClientParams;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageClearActiveFindMatchParams;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageStopFindingParams;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$FindInPageFindParams;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$Stub;,
        Lorg/chromium/blink/mojom/FindInPage_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FindInPage;",
            "Lorg/chromium/blink/mojom/FindInPage$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FindInPage_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FindInPage_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FindInPage_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
