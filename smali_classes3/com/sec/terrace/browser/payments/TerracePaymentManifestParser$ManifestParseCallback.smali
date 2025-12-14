.class public interface abstract Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser$ManifestParseCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ManifestParseCallback"
.end annotation


# virtual methods
.method public abstract onManifestParseFailure()V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public abstract onPaymentMethodManifestParseSuccess([Lcom/sec/terrace/browser/payments/TerraceGURL;[Lcom/sec/terrace/browser/payments/TerraceGURL;)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public abstract onWebAppManifestParseSuccess([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method
