.class public Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;,
        Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$OpBookmarkInfo;
    }
.end annotation


# static fields
.field static final OPERATOR_BOOKMARK_EDITABLE:Ljava/lang/String; = "editable"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMccMnc:Ljava/lang/String;

.field private mCurrentSpName:Ljava/lang/String;

.field private mCurrentSubsetCode:Ljava/lang/String;

.field private mParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

.field private mSavedMccMnc:Ljava/lang/String;

.field private mSavedSpName:Ljava/lang/String;

.field private mSavedSubsetCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->lambda$getSystemPropertyWithTimeout$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->lambda$checkBookmarkUpdate$0(Z)V

    return-void
.end method

.method private getDataSimValues()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isDebugTss2Activated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeMccMnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentMccMnc:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeSpName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSpName:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeSubsetCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSubsetCode:Ljava/lang/String;

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getSimIndex()I

    move-result v0

    const-string v2, "Sim index : "

    const-string v3, "OperatorBookmarkManager"

    invoke-static {v0, v2, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getFirstAvailableSimValues()V

    goto :goto_0

    :cond_2
    const-string v2, "gsm.sim.operator.numeric"

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getSimValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentMccMnc:Ljava/lang/String;

    const-string v2, "gsm.sim.operator.alpha"

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getSimValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSpName:Ljava/lang/String;

    const-string v2, "gsm.sim.operator.gid"

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getSimValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSubsetCode:Ljava/lang/String;

    :goto_0
    return v1
.end method

.method private getFirstAvailableSimValues()V
    .locals 2

    const-string v0, "OperatorBookmarkManager"

    const-string v1, "getFirstAvailableSimValues()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gsm.sim.operator.numeric"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getFirstAvailableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentMccMnc:Ljava/lang/String;

    const-string v0, "gsm.sim.operator.alpha"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getFirstAvailableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSpName:Ljava/lang/String;

    const-string v0, "gsm.sim.operator.gid"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getFirstAvailableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSubsetCode:Ljava/lang/String;

    return-void
.end method

.method private getFirstAvailableValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x9c4

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getSystemPropertyWithTimeout(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private getSimIndex()I
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "OperatorBookmarkManager"

    if-nez p0, :cond_0

    const-string p0, "SubscriptionManager is null?"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    if-ne v2, v0, :cond_1

    const-string p0, "invalid subscription id"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "SubscriptionInfo info is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    const-string v0, "SimSlotIndex is "

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return p0

    :catch_0
    const-string p0, "SecurityException in getSimIndex()"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0
.end method

.method private getSimValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x9c4

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getSystemPropertyWithTimeout(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    if-ge p2, p1, :cond_2

    aget-object p0, p0, p2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private isSameSimValue()Z
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mContext:Landroid/content/Context;

    const-string v1, "Browser.preferences_autobookmark"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Current MccMnc : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", SpName : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSpName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", SubsetCode : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSubsetCode:Ljava/lang/String;

    const-string v6, "OperatorBookmarkManager"

    invoke-static {v1, v5, v6}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mccmnc"

    const-string v5, "none"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mSavedMccMnc:Ljava/lang/String;

    const-string v7, "spname"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mSavedSpName:Ljava/lang/String;

    const-string v8, "subsetcode"

    invoke-interface {v0, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mSavedSubsetCode:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Saved MccMnc : "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mSavedMccMnc:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mSavedSpName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mSavedSubsetCode:Ljava/lang/String;

    invoke-static {v5, v3, v6}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mSavedMccMnc:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentMccMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mSavedSpName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSpName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mSavedSubsetCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSubsetCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "checkBookmarkUpdate: all values are the same, just return"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentMccMnc:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSpName:Ljava/lang/String;

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSubsetCode:Ljava/lang/String;

    invoke-interface {v0, v8, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "checkBookmarkUpdate: current mccmnc, spname, subsetcode are saved"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private synthetic lambda$checkBookmarkUpdate$0(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getDataSimValues()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "checkBookmarkUpdate: add default bookmarks without a sim card"

    const-string v2, "OperatorBookmarkManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->getFirstAvailableSimValues()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->isSameSimValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const-string p1, "checkBookmarkUpdate: sim values are changed, Update Bookmarks"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    if-nez p1, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    :cond_1
    new-instance p1, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;)V

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSubsetCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSubsetCode:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mCurrentSubsetCode:Ljava/lang/String;

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->isSameSimValue()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    if-nez p1, :cond_6

    new-instance p1, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    :cond_6
    new-instance p1, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mParser:Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager$UpdateBookmarksThread;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/OperatorBookmarkParser;)V

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static synthetic lambda$getSystemPropertyWithTimeout$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkBookmarkUpdate(Z)V
    .locals 4

    const-string v0, "checkBookmarkUpdate : "

    const-string v1, "OperatorBookmarkManager"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/OperatorBookmarkManager;->mContext:Landroid/content/Context;

    const-string v2, "Browser.preferences_autobookmark"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "bookmark_change"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "bookmark_change true, ignore update"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public getSystemPropertyWithTimeout(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    const-string v0, "OperatorBookmarkManager"

    new-instance v1, LOa/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, LOa/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    int-to-long v1, p2

    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, p2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    const-string p1, "Exception in getting system property"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    const-string p1, "Get system property timed out"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
