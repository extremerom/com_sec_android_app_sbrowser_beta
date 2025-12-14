.class public interface abstract Lorg/chromium/network/mojom/NetworkContext$GetPrivateStateTokenRedemptionRecords_Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetPrivateStateTokenRedemptionRecords_Response"
.end annotation


# virtual methods
.method public abstract call(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "[",
            "Lorg/chromium/network/mojom/ToplevelRedemptionRecord;",
            ">;)V"
        }
    .end annotation
.end method
