.class Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostShouldSkipUpdateDelaysResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostShouldSkipUpdateDelaysResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostShouldSkipUpdateDelaysResponseParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostShouldSkipUpdateDelaysParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostProcessPointerEventUsingMlModelParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerDataOnHoverTimerFiredParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerDownParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerOutParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerOverParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsPositionUpdateParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsLeftViewportParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsEnteredViewportParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportNewAnchorElementsParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementClickParams;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/AnchorElementMetricsHost;",
            "Lorg/chromium/blink/mojom/AnchorElementMetricsHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
