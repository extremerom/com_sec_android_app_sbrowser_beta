.class public Lcom/sec/android/app/sbrowser/common/blockers/ProvideNewBadge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDirectDownloadEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "direct_download"
    .end annotation
.end field


# virtual methods
.method public isDirectDownloadEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ProvideNewBadge;->mDirectDownloadEnabled:Z

    return p0
.end method
