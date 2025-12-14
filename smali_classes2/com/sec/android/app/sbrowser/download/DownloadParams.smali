.class public Lcom/sec/android/app/sbrowser/download/DownloadParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mFeatureId:I

.field private final mFilename:Ljava/lang/String;

.field private final mHeaders:Ljava/lang/String;

.field private final mIsOffTheRecord:Z

.field private final mRefererUrl:Ljava/lang/String;

.field private final mShouldBlockNotify:Z

.field private final mTerrace:Lcom/sec/terrace/Terrace;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/terrace/Terrace;Ljava/lang/String;ZLandroid/app/Activity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mTerrace:Lcom/sec/terrace/Terrace;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mFilename:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mRefererUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mHeaders:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mShouldBlockNotify:Z

    iput p4, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mFeatureId:I

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mActivity:Landroid/app/Activity;

    iput-boolean p9, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mIsOffTheRecord:Z

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getFeatureId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mFeatureId:I

    return p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mFilename:Ljava/lang/String;

    return-object p0
.end method

.method public getHeaders()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mHeaders:Ljava/lang/String;

    return-object p0
.end method

.method public getIsOffTheRecord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mIsOffTheRecord:Z

    return p0
.end method

.method public getRefererUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mRefererUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getShouldBlockNotify()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mShouldBlockNotify:Z

    return p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams;->mUrl:Ljava/lang/String;

    return-object p0
.end method
