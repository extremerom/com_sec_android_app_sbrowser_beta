.class public Lcom/sec/terrace/browser/quota/TerraceRequestQuotaInfoBarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"


# instance fields
.field private mRequestedOrigin:Ljava/lang/String;

.field private mRequestedQuota:J


# direct methods
.method private constructor <init>(JJLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    iput-wide p3, p0, Lcom/sec/terrace/browser/quota/TerraceRequestQuotaInfoBarDelegate;->mRequestedQuota:J

    iput-object p5, p0, Lcom/sec/terrace/browser/quota/TerraceRequestQuotaInfoBarDelegate;->mRequestedOrigin:Ljava/lang/String;

    return-void
.end method

.method public static create(JJLjava/lang/String;)Lcom/sec/terrace/browser/quota/TerraceRequestQuotaInfoBarDelegate;
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v6, Lcom/sec/terrace/browser/quota/TerraceRequestQuotaInfoBarDelegate;

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/quota/TerraceRequestQuotaInfoBarDelegate;-><init>(JJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public getRequestedOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/quota/TerraceRequestQuotaInfoBarDelegate;->mRequestedOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestedQuota()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/quota/TerraceRequestQuotaInfoBarDelegate;->mRequestedQuota:J

    return-wide v0
.end method
