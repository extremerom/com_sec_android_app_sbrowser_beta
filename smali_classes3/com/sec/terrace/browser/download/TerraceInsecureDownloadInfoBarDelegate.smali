.class public Lcom/sec/terrace/browser/download/TerraceInsecureDownloadInfoBarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    iput-object p3, p0, Lcom/sec/terrace/browser/download/TerraceInsecureDownloadInfoBarDelegate;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static create(JLjava/lang/String;)Lcom/sec/terrace/browser/download/TerraceInsecureDownloadInfoBarDelegate;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceInsecureDownloadInfoBarDelegate;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/browser/download/TerraceInsecureDownloadInfoBarDelegate;-><init>(JLjava/lang/String;)V

    return-object v0
.end method
