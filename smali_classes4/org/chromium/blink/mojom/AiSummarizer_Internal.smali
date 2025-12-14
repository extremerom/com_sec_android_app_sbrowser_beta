.class Lorg/chromium/blink/mojom/AiSummarizer_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AiSummarizer_Internal$AiSummarizerMeasureUsageResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/AiSummarizer_Internal$AiSummarizerMeasureUsageResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/AiSummarizer_Internal$AiSummarizerMeasureUsageResponseParams;,
        Lorg/chromium/blink/mojom/AiSummarizer_Internal$AiSummarizerMeasureUsageParams;,
        Lorg/chromium/blink/mojom/AiSummarizer_Internal$AiSummarizerSummarizeParams;,
        Lorg/chromium/blink/mojom/AiSummarizer_Internal$Stub;,
        Lorg/chromium/blink/mojom/AiSummarizer_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/AiSummarizer;",
            "Lorg/chromium/blink/mojom/AiSummarizer$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/AiSummarizer_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiSummarizer_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/AiSummarizer_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
