.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;
.super Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;
.source "SourceFile"


# instance fields
.field private final mAppName:Ljava/lang/String;

.field private final mBlockedCount:I

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIsBlocked:Z

.field private final mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZII)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->mAppName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->mIsBlocked:Z

    iput p4, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->mTotalCount:I

    iput p5, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->mBlockedCount:I

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->mIsBlocked:Z

    return p0
.end method

.method public getBlockedCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->mBlockedCount:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTotalCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->mTotalCount:I

    return p0
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
