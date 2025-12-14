.class public interface abstract Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$FullCardRequestDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FullCardRequestDelegate"
.end annotation


# virtual methods
.method public abstract onFullCardDetails(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Ljava/lang/String;)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public abstract onFullCardError()V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method
