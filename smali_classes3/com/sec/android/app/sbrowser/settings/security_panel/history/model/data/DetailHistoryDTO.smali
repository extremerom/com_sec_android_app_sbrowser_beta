.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBlockedCount:I

.field private mIsBlocked:Z

.field private mLevel:I

.field private final mTime:J

.field private mTrackerUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(JZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mTime:J

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mIsBlocked:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mTime:J

    iput p5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mLevel:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mTrackerUrl:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mBlockedCount:I

    return-void
.end method


# virtual methods
.method public getBlockedCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mBlockedCount:I

    return p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mTime:J

    return-wide v0
.end method

.method public getTrackerUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mTrackerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;->mIsBlocked:Z

    return p0
.end method
