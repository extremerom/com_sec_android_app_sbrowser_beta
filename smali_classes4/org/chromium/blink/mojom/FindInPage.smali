.class public interface abstract Lorg/chromium/blink/mojom/FindInPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FindInPage$FindMatchRects_Response;,
        Lorg/chromium/blink/mojom/FindInPage$GetNearestFindResult_Response;,
        Lorg/chromium/blink/mojom/FindInPage$Proxy;
    }
.end annotation


# virtual methods
.method public abstract activateNearestFindResult(ILorg/chromium/gfx/mojom/PointF;)V
.end method

.method public abstract clearActiveFindMatch()V
.end method

.method public abstract find(ILjava/lang/String;Lorg/chromium/blink/mojom/FindOptions;)V
.end method

.method public abstract findMatchRects(ILorg/chromium/blink/mojom/FindInPage$FindMatchRects_Response;)V
.end method

.method public abstract getNearestFindResult(Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/blink/mojom/FindInPage$GetNearestFindResult_Response;)V
.end method

.method public abstract setClient(Lorg/chromium/blink/mojom/FindInPageClient;)V
.end method

.method public abstract stopFinding(I)V
.end method
