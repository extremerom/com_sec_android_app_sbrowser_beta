.class public Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsChecked:Z

.field private mIsSelected:Z

.field private mUrl:Ljava/lang/String;

.field private mWebsite:Lcom/sec/android/app/sbrowser/settings/website/Website;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/Website;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->mUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->mIsChecked:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->mWebsite:Lcom/sec/android/app/sbrowser/settings/website/Website;

    return-void
.end method


# virtual methods
.method public getIsChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->mIsChecked:Z

    return p0
.end method

.method public getIsSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->mIsSelected:Z

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getWebsite()Lcom/sec/android/app/sbrowser/settings/website/Website;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->mWebsite:Lcom/sec/android/app/sbrowser/settings/website/Website;

    return-object p0
.end method

.method public setIsSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->mIsSelected:Z

    return-void
.end method
