.class public Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;,
        Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mManifestWebDataServiceAndroid:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataServiceJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;->init(Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->mManifestWebDataServiceAndroid:J

    return-void
.end method

.method private static addFingerprintToSection([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;II[B)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->fingerprints:[[B

    aput-object p3, p0, p2

    return-void
.end method

.method private static addSectionToManifest([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;ILjava/lang/String;JI)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;-><init>(Ljava/lang/String;JI)V

    aput-object v0, p0, p1

    return-void
.end method

.method private static createManifest(I)[Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-array p0, p0, [Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;

    return-object p0
.end method

.method private static getFingerprintsFromSection(Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)[[B
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->fingerprints:[[B

    return-object p0
.end method

.method private static getIdFromSection(Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->id:Ljava/lang/String;

    return-object p0
.end method

.method private static getMinVersionFromSection(Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->minVersion:J

    return-wide v0
.end method


# virtual methods
.method public addPaymentMethodManifest(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataServiceJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->mManifestWebDataServiceAndroid:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;->addPaymentMethodManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addPaymentWebAppManifest([Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataServiceJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->mManifestWebDataServiceAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;->addPaymentWebAppManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;[Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataServiceJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->mManifestWebDataServiceAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;->destroy(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->mManifestWebDataServiceAndroid:J

    return-void
.end method

.method public getPaymentMethodManifest(Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;)Z
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataServiceJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->mManifestWebDataServiceAndroid:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;->getPaymentMethodManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;)Z

    move-result p0

    return p0
.end method

.method public getPaymentWebAppManifest(Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;)Z
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataServiceJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->mManifestWebDataServiceAndroid:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$Natives;->getPaymentWebAppManifest(JLcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;)Z

    move-result p0

    return p0
.end method
