.class public interface abstract Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ManifestVerifyCallback"
.end annotation


# virtual methods
.method public abstract onFinishedUsingResources()V
.end method

.method public abstract onFinishedVerification()V
.end method

.method public abstract onValidDefaultPaymentApp(Lcom/sec/terrace/browser/payments/TerraceGURL;Landroid/content/pm/ResolveInfo;)V
.end method

.method public abstract onValidSupportedOrigin(Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerraceGURL;)V
.end method

.method public abstract onVerificationError(Ljava/lang/String;)V
.end method
