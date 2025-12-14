.class public interface abstract Lorg/chromium/blink/mojom/TextFragmentReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/TextFragmentReceiver$ExtractFirstFragmentRect_Response;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver$GetExistingSelectors_Response;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver$ExtractTextFragmentsMatches_Response;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver$RequestSelector_Response;,
        Lorg/chromium/blink/mojom/TextFragmentReceiver$Proxy;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract extractFirstFragmentRect(Lorg/chromium/blink/mojom/TextFragmentReceiver$ExtractFirstFragmentRect_Response;)V
.end method

.method public abstract extractTextFragmentsMatches(Lorg/chromium/blink/mojom/TextFragmentReceiver$ExtractTextFragmentsMatches_Response;)V
.end method

.method public abstract getExistingSelectors(Lorg/chromium/blink/mojom/TextFragmentReceiver$GetExistingSelectors_Response;)V
.end method

.method public abstract removeFragments()V
.end method

.method public abstract requestSelector(Lorg/chromium/blink/mojom/TextFragmentReceiver$RequestSelector_Response;)V
.end method
