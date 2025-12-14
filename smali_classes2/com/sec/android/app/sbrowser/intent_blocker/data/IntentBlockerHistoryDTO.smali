.class public Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIsBlocked:Z

.field private final mTime:J

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(JZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;->mTime:J

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;->mIsBlocked:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;->mTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerHistoryDTO;->mIsBlocked:Z

    return p0
.end method
