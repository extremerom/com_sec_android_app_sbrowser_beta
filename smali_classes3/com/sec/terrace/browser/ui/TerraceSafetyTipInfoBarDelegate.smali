.class public Lcom/sec/terrace/browser/ui/TerraceSafetyTipInfoBarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    iput-object p3, p0, Lcom/sec/terrace/browser/ui/TerraceSafetyTipInfoBarDelegate;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public static create(JLjava/lang/String;)Lcom/sec/terrace/browser/ui/TerraceSafetyTipInfoBarDelegate;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/ui/TerraceSafetyTipInfoBarDelegate;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/browser/ui/TerraceSafetyTipInfoBarDelegate;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/ui/TerraceSafetyTipInfoBarDelegate;->mUrl:Ljava/lang/String;

    return-object p0
.end method
