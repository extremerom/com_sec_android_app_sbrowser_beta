.class public interface abstract Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract addPaymentMethodManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract addPaymentWebAppManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;[Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)V
.end method

.method public abstract destroy(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;)V
.end method

.method public abstract getPaymentMethodManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;)Z
.end method

.method public abstract getPaymentWebAppManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;)Z
.end method

.method public abstract init(Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;)J
.end method
