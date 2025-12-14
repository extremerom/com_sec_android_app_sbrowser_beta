.class Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverExtractFirstFragmentRectResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverExtractFirstFragmentRectResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverExtractFirstFragmentRectResponseParams;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverExtractFirstFragmentRectParams;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverGetExistingSelectorsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverGetExistingSelectorsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverGetExistingSelectorsResponseParams;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverGetExistingSelectorsParams;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverExtractTextFragmentsMatchesResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverExtractTextFragmentsMatchesResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverExtractTextFragmentsMatchesResponseParams;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverExtractTextFragmentsMatchesParams;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverRemoveFragmentsParams;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverRequestSelectorResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverRequestSelectorResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverRequestSelectorResponseParams;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverRequestSelectorParams;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$TextFragmentReceiverCancelParams;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$Stub;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/TextFragmentReceiver;",
            "Lorg/chromium/blink/mojom/TextFragmentReceiver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/TextFragmentReceiver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
