.class public Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataServiceJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataServiceJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataServiceJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addPaymentMethodManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MZjPgitE(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addPaymentWebAppManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;[Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MFAC5g9p(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public destroy(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MYbLuqVd(JLjava/lang/Object;)V

    return-void
.end method

.method public getPaymentMethodManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MlmnFehr(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPaymentWebAppManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M58EPNyH(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public init(Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;)J
    .locals 0

    invoke-static {p1}, LJ/N;->M83seZO6(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
