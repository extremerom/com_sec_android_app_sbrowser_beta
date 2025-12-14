.class public interface abstract Lorg/chromium/network/mojom/TrustTokenQueryAnswerer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer$HasRedemptionRecord_Response;,
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer$HasTrustTokens_Response;,
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer$Proxy;
    }
.end annotation


# virtual methods
.method public abstract hasRedemptionRecord(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/TrustTokenQueryAnswerer$HasRedemptionRecord_Response;)V
.end method

.method public abstract hasTrustTokens(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/TrustTokenQueryAnswerer$HasTrustTokens_Response;)V
.end method
