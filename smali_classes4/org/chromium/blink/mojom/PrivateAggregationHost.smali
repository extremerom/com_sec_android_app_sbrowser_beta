.class public interface abstract Lorg/chromium/blink/mojom/PrivateAggregationHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PrivateAggregationHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract contributeToHistogram([Lorg/chromium/blink/mojom/AggregatableReportHistogramContribution;)V
.end method

.method public abstract contributeToHistogramOnEvent(I[Lorg/chromium/blink/mojom/AggregatableReportHistogramContribution;)V
.end method

.method public abstract enableDebugMode(Lorg/chromium/blink/mojom/DebugKey;)V
.end method
