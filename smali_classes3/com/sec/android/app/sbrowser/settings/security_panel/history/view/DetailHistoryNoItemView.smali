.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryNoItemView;
.super Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;
.source "SourceFile"


# instance fields
.field private final mId:I

.field private mNoItemSummary:Ljava/lang/String;


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryNoItemView;->mId:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryNoItemView;->mNoItemSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method
