.class public final Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/DownloadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFeatureId:I

.field private mFilename:Ljava/lang/String;

.field private mHeaders:Ljava/lang/String;

.field private mIsOffTheRecord:Z

.field private mRefererUrl:Ljava/lang/String;

.field private mShouldBlockNotify:Z

.field private mTerrace:Lcom/sec/terrace/Terrace;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/download/DownloadParams;
    .locals 11

    new-instance v10, Lcom/sec/android/app/sbrowser/download/DownloadParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mRefererUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mFilename:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mFeatureId:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mTerrace:Lcom/sec/terrace/Terrace;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mHeaders:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mShouldBlockNotify:Z

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mActivity:Landroid/app/Activity;

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mIsOffTheRecord:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/download/DownloadParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/terrace/Terrace;Ljava/lang/String;ZLandroid/app/Activity;Z)V

    return-object v10
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public setFeatureId(I)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mFeatureId:I

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mFilename:Ljava/lang/String;

    return-object p0
.end method

.method public setFileUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setHeaders(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mHeaders:Ljava/lang/String;

    return-object p0
.end method

.method public setIsOffTheRecord(Z)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mIsOffTheRecord:Z

    return-object p0
.end method

.method public setReferrerUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mRefererUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setShouldBlockNotify(Z)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mShouldBlockNotify:Z

    return-object p0
.end method

.method public setTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->mTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method
