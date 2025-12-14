.class public Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mVersion:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    return-void
.end method


# virtual methods
.method public isSupportedVersion()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/16 v0, 0xe

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setVersion(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    return-void
.end method

.method public supportActiveTime()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/16 v0, 0xd

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportContentPageLaunch()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportIncognito()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportLock()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/4 v0, 0x7

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportTabGroup()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportTabGroupColor()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportTitle()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/16 v0, 0xe

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportUrlRead()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportUserAgentRead()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/4 v0, 0x6

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportVisitCount()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/16 v0, 0xc

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportZoom()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->mVersion:I

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
