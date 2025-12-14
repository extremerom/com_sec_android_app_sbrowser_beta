.class public abstract Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel$Listener;
    }
.end annotation


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mBlockedCount:I

.field public mDateRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

.field public mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;"
        }
    .end annotation
.end field

.field public mIsEnabled:Z

.field public mIsSecretMode:Z

.field public mPATStatus:Z

.field public mPrefKey:Ljava/lang/String;

.field public mSatLevel:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mDateRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "sbrowser.settings.show_fragment_args"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_secretmode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsSecretMode:Z

    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mPrefKey:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mPrefKey:Ljava/lang/String;

    const-string v2, "DetailHistoryModel"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "start_date"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v5, "end_date"

    invoke-virtual {p1, v5, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mDateRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    new-instance v5, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-direct {v5, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(J)V

    const/4 v0, 0x0

    aput-object v5, p1, v0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mDateRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(J)V

    const/4 v3, 0x1

    aput-object v1, p1, v3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mDateRange start : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mDateRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getDisplayString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mDateRange end : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mDateRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getDisplayString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public attachSecretModeView()V
    .locals 3

    const-string v0, "DetailHistoryModel"

    const-string v1, "attachSecretModeView - except SAT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mHistoryData:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;-><init>(ILjava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->getInstance()Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->notifyDataUpdated()V

    return-void
.end method

.method public deleteItems(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryUiUtils;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formattedTwoNumberString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryUiUtils;->formattedTwoNumberString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getConfirmCancelID()Ljava/lang/String;
.end method

.method public abstract getConfirmOkID()Ljava/lang/String;
.end method

.method public getCountByTracker()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getItemClickID()Ljava/lang/String;
.end method

.method public abstract getItemList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;"
        }
    .end annotation
.end method

.method public getListData(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel$Listener;)V
    .locals 2

    const-string v0, "DetailHistoryModel"

    const-string v1, "getListData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->getItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel$Listener;->onListDataLoaded(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    :cond_0
    return-void
.end method

.method public abstract getNavigateUpID()Ljava/lang/String;
.end method

.method public getSatLevel()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mSatLevel:I

    return p0
.end method

.method public abstract getScreenID()Ljava/lang/String;
.end method

.method public abstract getSecretModeSummary()Ljava/lang/String;
.end method

.method public getSortMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTrackerList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasNoData()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasNoData? (mBlockedCount : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailHistoryModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mBlockedCount:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsEnabled:Z

    return p0
.end method

.method public isSecretMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsSecretMode:Z

    return p0
.end method

.method public abstract requestData()V
.end method

.method public setBlockStatus(Z)V
    .locals 2

    const-string v0, "setBlockStatus (boolean) : "

    const-string v1, "DetailHistoryModel"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsEnabled:Z

    return-void
.end method

.method public setDataFromIntent(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPATStatus(Z)V
    .locals 2

    const-string v0, "setPATStatus (boolean) : "

    const-string v1, "DetailHistoryModel"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mPATStatus:Z

    return-void
.end method

.method public setSatLevel(I)V
    .locals 2

    const-string v0, "setSatLevel (int) : "

    const-string v1, "DetailHistoryModel"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mSatLevel:I

    return-void
.end method

.method public setScreenID(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sortBy(I)V
    .locals 0

    return-void
.end method
