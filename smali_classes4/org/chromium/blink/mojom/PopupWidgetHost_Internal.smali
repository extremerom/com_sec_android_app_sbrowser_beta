.class Lorg/chromium/blink/mojom/PopupWidgetHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$PopupWidgetHostSetPopupBoundsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$PopupWidgetHostSetPopupBoundsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$PopupWidgetHostSetPopupBoundsResponseParams;,
        Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$PopupWidgetHostSetPopupBoundsParams;,
        Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$PopupWidgetHostShowPopupResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$PopupWidgetHostShowPopupResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$PopupWidgetHostShowPopupResponseParams;,
        Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$PopupWidgetHostShowPopupParams;,
        Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$PopupWidgetHostRequestClosePopupParams;,
        Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/PopupWidgetHost;",
            "Lorg/chromium/blink/mojom/PopupWidgetHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PopupWidgetHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/PopupWidgetHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
