.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;
.super Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;
.source "SourceFile"


# instance fields
.field private final mBlockCount:I

.field private final mId:I

.field private final mIsBlocked:Z

.field private final mTime:J

.field private final mUrl:Ljava/lang/String;

.field private mViewType:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mId:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mIsBlocked:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mUrl:Ljava/lang/String;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mTime:J

    iput p4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mBlockCount:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mViewType:I

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mId:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mIsBlocked:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mUrl:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mTime:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mBlockCount:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mViewType:I

    return-void
.end method


# virtual methods
.method public getBlockedCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mBlockCount:I

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mId:I

    return p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mViewType:I

    return p0
.end method

.method public isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->mIsBlocked:Z

    return p0
.end method
