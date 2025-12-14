.class public Lcom/sec/android/app/sbrowser/common/stub/StubData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContentSize:Ljava/lang/String;

.field private mDownloadURI:Ljava/lang/String;

.field private mEndNum:I

.field private mExtList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEndOfList:Z

.field private mProductId:Ljava/lang/String;

.field private mProductName:Ljava/lang/String;

.field private mResultCode:Ljava/lang/String;

.field private mResultMsg:Ljava/lang/String;

.field private mSignature:Ljava/lang/String;

.field private mStartNum:I

.field private mVersionCode:Ljava/lang/String;

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mContentSize:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mDownloadURI:Ljava/lang/String;

    return-object p0
.end method

.method public getExtList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mExtList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mResultCode:Ljava/lang/String;

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mSignature:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mVersionCode:Ljava/lang/String;

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setContentSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mContentSize:Ljava/lang/String;

    return-void
.end method

.method public setDownloadURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mDownloadURI:Ljava/lang/String;

    return-void
.end method

.method public setEndNum(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mEndNum:I

    return-void
.end method

.method public setExtList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mExtList:Ljava/util/ArrayList;

    return-void
.end method

.method public setIsEndOfList(Ljava/lang/String;)V
    .locals 1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mIsEndOfList:Z

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mProductId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mProductName:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mResultCode:Ljava/lang/String;

    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mResultMsg:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mSignature:Ljava/lang/String;

    return-void
.end method

.method public setStartNum(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mStartNum:I

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mVersionCode:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;->mVersionName:Ljava/lang/String;

    return-void
.end method
