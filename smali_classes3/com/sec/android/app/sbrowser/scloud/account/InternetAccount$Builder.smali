.class public Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mApiServerUrl:Ljava/lang/String;

.field private mAuthServerUrl:Ljava/lang/String;

.field private mAuthToken:Ljava/lang/String;

.field private mAuthTokenExpiredTime:J

.field private mId:Ljava/lang/String;

.field private mLastUpdateTime:J

.field private mRefreshToken:Ljava/lang/String;

.field private mRefreshTokenExpiredTime:J

.field private mType:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mId:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mUserId:Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mType:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mAuthToken:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mAuthTokenExpiredTime:J

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authServerUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mAuthServerUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->apiServerUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mApiServerUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mLastUpdateTime:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The input parameters should not be empty or less than zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_0

    cmp-long v0, p6, v0

    if-ltz v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mAuthToken:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mAuthTokenExpiredTime:J

    iput-wide p6, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mLastUpdateTime:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The input parameters should not be empty or less than zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mApiServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mAuthServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mAuthToken:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mAuthTokenExpiredTime:J

    return-wide v0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mLastUpdateTime:J

    return-wide v0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mRefreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mRefreshTokenExpiredTime:J

    return-wide v0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mUserId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;-><init>(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;I)V

    return-object v0
.end method

.method public setApiServerUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mApiServerUrl:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The apiServerUrl should not be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAuthServerUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mAuthServerUrl:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The authServerUrl should not be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mRefreshToken:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The refresh token should not be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRefreshTokenExpiredTime(J)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mRefreshTokenExpiredTime:J

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The expiredTime of refresh token should be greater than 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->mUserId:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The userId should not be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
