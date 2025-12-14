.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;
.super Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;
.source "SourceFile"


# instance fields
.field private final mDate:Ljava/lang/String;

.field private final mId:I

.field private final mIsBlocked:Z

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->mId:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->mIsBlocked:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->mUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->mDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->mId:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->mIsBlocked:Z

    return p0
.end method
