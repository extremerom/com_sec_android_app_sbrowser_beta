.class public interface abstract Lorg/chromium/blink/mojom/SpeculationHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SpeculationHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract initiatePreview(Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract onLcpPredicted()V
.end method

.method public abstract updateSpeculationCandidates([Lorg/chromium/blink/mojom/SpeculationCandidate;)V
.end method
