.class public Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V
    .locals 8

    new-instance v7, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    new-instance v1, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;

    invoke-direct {v1}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;-><init>()V

    new-instance v2, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    invoke-direct {v2}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;-><init>()V

    new-instance v3, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

    invoke-direct {v3}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;-><init>()V

    new-instance v4, Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;-><init>()V

    move-object v0, v7

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;-><init>(Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;)V

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->findAndroidPaymentApps()V

    return-void
.end method
