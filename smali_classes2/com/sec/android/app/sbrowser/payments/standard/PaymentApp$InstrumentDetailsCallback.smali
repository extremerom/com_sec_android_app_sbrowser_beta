.class public interface abstract Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InstrumentDetailsCallback"
.end annotation


# virtual methods
.method public abstract onInstrumentDetailsError(Ljava/lang/String;)V
.end method

.method public abstract onInstrumentDetailsLoadingWithoutUI()V
.end method

.method public abstract onInstrumentDetailsReady(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V
.end method
