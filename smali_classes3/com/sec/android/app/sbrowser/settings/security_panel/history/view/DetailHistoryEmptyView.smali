.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryEmptyView;
.super Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;
.source "SourceFile"


# instance fields
.field private final mId:I

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryEmptyView;->mId:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryEmptyView;->mSummary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryEmptyView;->mId:I

    return p0
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

    const/16 p0, 0xa

    return p0
.end method
