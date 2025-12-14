.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryHeaderView;
.super Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;
.source "SourceFile"


# instance fields
.field private final mHeaderText:Ljava/lang/String;

.field private final mId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryHeaderView;->mId:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryHeaderView;->mHeaderText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeaderText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryHeaderView;->mHeaderText:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryHeaderView;->mId:I

    return p0
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
