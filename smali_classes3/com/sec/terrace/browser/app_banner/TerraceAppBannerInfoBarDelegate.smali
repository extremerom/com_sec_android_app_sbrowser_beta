.class public Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;
.super Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;
.source "SourceFile"


# instance fields
.field private mAppTitle:Ljava/lang/String;

.field private mIconImage:Landroid/graphics/Bitmap;

.field private mIsWebapk:Z


# direct methods
.method private constructor <init>(JLjava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;-><init>(IJ)V

    iput-object p3, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;->mAppTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;->mIconImage:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;->mIsWebapk:Z

    return-void
.end method

.method public static create(JLjava/lang/String;Landroid/graphics/Bitmap;Z)Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v6, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;-><init>(JLjava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-object v6
.end method


# virtual methods
.method public getAppTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;->mAppTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getIconImage()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;->mIconImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public isWebApk()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;->mIsWebapk:Z

    return p0
.end method
