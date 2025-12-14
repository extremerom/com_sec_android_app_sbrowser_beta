.class public Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Icon"
.end annotation


# instance fields
.field private mSizes:Ljava/lang/String;

.field private mSrc:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSizes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;->mSizes:Ljava/lang/String;

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;->mSrc:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;->mType:Ljava/lang/String;

    return-void
.end method
