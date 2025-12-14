.class public Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus$PrivacyFeature;
    }
.end annotation


# instance fields
.field private mCount:I

.field private mFeatureType:I
    .annotation build Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus$PrivacyFeature;
    .end annotation
.end field

.field private mIsFeatureEnabled:Z

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->mCount:I

    return p0
.end method

.method public getFeatureType()I
    .locals 0
    .annotation build Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus$PrivacyFeature;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->mFeatureType:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public isFeatureEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->mIsFeatureEnabled:Z

    return p0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->mCount:I

    return-void
.end method

.method public setFeatureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->mIsFeatureEnabled:Z

    return-void
.end method

.method public setFeatureType(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus$PrivacyFeature;
        .end annotation
    .end param

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->mFeatureType:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->mMessage:Ljava/lang/String;

    return-void
.end method
