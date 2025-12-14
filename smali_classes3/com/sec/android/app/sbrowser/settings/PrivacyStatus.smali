.class public Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBlockedCountToday:I

.field private mBlockedCountWeek:I

.field private mIsBlocked:Z

.field private mTrackedCountToday:I

.field private mType:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->mType:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->mIsBlocked:Z

    return-void
.end method


# virtual methods
.method public getBlockedCountToday()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->mBlockedCountToday:I

    return p0
.end method

.method public getBlockedCountWeek()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->mBlockedCountWeek:I

    return p0
.end method

.method public getTrackedCountToday()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->mTrackedCountToday:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->mType:I

    return p0
.end method

.method public isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->mIsBlocked:Z

    return p0
.end method

.method public setBlockedCountToday(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->mBlockedCountToday:I

    return-void
.end method

.method public setBlockedCountWeek(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->mBlockedCountWeek:I

    return-void
.end method

.method public setTrackedCountToday(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->mTrackedCountToday:I

    return-void
.end method
