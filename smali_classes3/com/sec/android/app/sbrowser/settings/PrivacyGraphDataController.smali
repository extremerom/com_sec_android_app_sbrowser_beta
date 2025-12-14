.class public Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;,
        Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;,
        Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBlockedAllowedapps:Z

.field private mBlockedBackward:Z

.field private mBlockedPopup:Z

.field private mBlockedSmartAntiTracking:Z

.field private mCleanDataReady:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCleanListener:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;

.field private mCleanStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mDataBackwardReirect:I

.field private mDataIntentBlocker:I

.field private mDataPopup:I

.field private mDataSat:I

.field private mGraphDataClean:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGraphDataPrivacy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGraphTrackedDataClean:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImmediateForClean:Z

.field private mImmediateForPrivacy:Z

.field private mIsCleanGraphOff:Z

.field private mIsPrivacyGraphOff:Z

.field private mIsSecretModeOn:Z

.field private mListener:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;

.field private mPrevCleanAllStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevPrivacyAllStatus:Z

.field private mRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

.field private mSubSummaryClean:Ljava/lang/String;

.field private mSubSummaryPrivacy:Ljava/lang/String;

.field private mSummaryClean:Ljava/lang/String;

.field private mSummaryPrivacy:Ljava/lang/String;

.field private mTrackerCount:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mTrackerCount:I

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanDataReady:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mIsSecretModeOn:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanStatus:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataClean:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphTrackedDataClean:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataPrivacy:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getPreviousSettings()V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->setListener(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->updateGraphData()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->lambda$setCleanListener$0(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedSmartAntiTracking:Z

    return p0
.end method

.method private checkImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getImmediateClean()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getImmediatePrivacy()Z

    move-result p0

    return p0
.end method

.method private collectGraphDataForClean()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mIsSecretModeOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getSummarySecretModeClean()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->setCleanListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->requestGraphDataPopup(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->requestGraphDataIntentBlocker(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->requestGraphDataUnwanted(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataClean:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getDataCountForCase(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getSummaryForClean()V

    return-void
.end method

.method private collectGraphDataForPrivacy()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mIsSecretModeOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getSummarySecretModePrivacy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryPrivacy:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->requestGraphDataSAT(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanListener:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataPopup:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataSat:I

    return p0
.end method

.method private formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "formattedNumberString org : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PrivacyGraph"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "formattedTwoNumberString num : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "%d"

    const-string v1, "%s"

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "formattedNumberString mod : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/icu/text/NumberFormat;->getInstance()Landroid/icu/text/NumberFormat;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formattedTwoNumberString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "formattedTwoNumberString org : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PrivacyGraph"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "formattedTwoNumberString num1 : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " num2 : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "%1$d"

    const-string v1, "%1$s"

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%2$d"

    const-string v1, "%2$s"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "formattedTwoNumberString mod : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/icu/text/NumberFormat;->getInstance()Landroid/icu/text/NumberFormat;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/icu/text/NumberFormat;->getInstance()Landroid/icu/text/NumberFormat;

    move-result-object p2

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataClean:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getBlockedToday(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    move p2, v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getBlockedToday ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getDisplayString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") block count : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PrivacyGraph"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getCurrentData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    const-string v1, "PrivacyGraph"

    if-ne p1, v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(immediate) is Blocked CLEAN : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "(immediate) Blocked count CLEAN : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataBackwardReirect:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataPopup:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataIntentBlocker:I

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isCleanAllOff()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataBackwardReirect:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataPopup:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataIntentBlocker:I

    add-int/2addr p1, p0

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataBackwardReirect:I

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataPopup:I

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    add-int/2addr p1, v1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataIntentBlocker:I

    :cond_3
    add-int/2addr p1, v0

    :goto_2
    return p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(immediate) is Blocked PRIVACY : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedSmartAntiTracking:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(immediate) Blocked count PRIVACY: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataSat:I

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataSat:I

    return p0
.end method

.method private getDataCountForCase(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    aget v8, v1, v5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v8

    aput v7, v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_2
    const-string v6, "entry "

    const-string v7, "PrivacyGraph"

    if-ge v5, v0, :cond_3

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_3

    :cond_2
    move v8, v4

    :goto_3
    aput v8, v2, v5

    const-string v8, " \'s blocked count :"

    invoke-static {v5, v6, v8}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v2, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move p2, v4

    :goto_4
    if-ge p2, v0, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphTrackedDataClean:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5

    :cond_4
    move v5, v4

    :goto_5
    aput v5, v3, p2

    const-string v5, " \'s tracked count :"

    invoke-static {p2, v6, v5}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v8, v3, p2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanStatus:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->getType()I

    move-result p2

    aget v0, v1, p2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->setBlockedCountWeek(I)V

    aget v0, v2, p2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->setBlockedCountToday(I)V

    aget p2, v3, p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->setTrackedCountToday(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cleanStatus type (0:allowedapps,1:popup,2:redirect): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->getType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->isBlocked()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cleanStatus per week : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->getBlockedCountWeek()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cleanStatus per today : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->getBlockedCountToday()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cleanStatus per today(tracked) : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->getTrackedCountToday()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    return-void
.end method

.method private getFeatureToPromote(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140228

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140948

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140643

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFeatureWithNoData()I
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanStatus:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->isBlocked()Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanStatus:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->isBlocked()Z

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanStatus:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->isBlocked()Z

    move-result p0

    const/4 v5, -0x1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_0

    move v1, v4

    :goto_0
    return v1
.end method

.method private getLastImmediateOffData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    const-string v0, "PrivacyGraph"

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastAllOffClean()I

    move-result p0

    const-string p1, "(immediate) getLastImmediateOffData CLEAN : "

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastAllOffPrivacy()I

    move-result p0

    const-string p1, "(immediate) getLastImmediateOffData PRIVACY : "

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p0
.end method

.method private getLastImmediateOnData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    const-string v0, "PrivacyGraph"

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastOnClean()I

    move-result p0

    const-string p1, "(immediate) getLastImmediateOnData CLEAN : "

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastONPrivacy()I

    move-result p0

    const-string p1, "(immediate) getLastImmediateOnData PRIVACY : "

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p0
.end method

.method private getPreviousSettings()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getPackagesCount(Z)I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockUnwantedWebpagesEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    const-string v1, "block_popups"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedSmartAntiTracking:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mPrevCleanAllStatus:Ljava/util/HashMap;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "backward"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mPrevCleanAllStatus:Ljava/util/HashMap;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "popup"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mPrevCleanAllStatus:Ljava/util/HashMap;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "allowedapps"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedSmartAntiTracking:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mPrevPrivacyAllStatus:Z

    return-void
.end method

.method private getSubSummaryWorkingSome(II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    const-string v1, "\u2022  "

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120056

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120054

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120052

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSummaryForClean()V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryClean:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanStatus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->isBlocked()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->getTrackedCountToday()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->getBlockedCountToday()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->getBlockedCountToday()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isCleanAllOff()Z

    move-result v1

    const-string v6, "PrivacyGraph"

    const/4 v7, -0x1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getLastImmediateOffData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v8

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getCurrentData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v9

    if-ge v8, v9, :cond_3

    if-ne v8, v7, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "(immediate) mImmediateForClean : "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    invoke-static {v6, v1, v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_3

    :cond_3
    :goto_1
    const-string v0, "(immediate) getLastImmediateOffData CLEAN_WEB : "

    invoke-static {v8, v0, v6}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140e47

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveLastImmediateOffData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result p0

    const-string v0, "(immediate) saveLastImmediateOffData CLEAN_WEB : "

    invoke-static {p0, v0, v6}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getLastImmediateOnData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v8

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getCurrentData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v9

    if-ge v8, v9, :cond_6

    if-ne v8, v7, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "(immediate) mImmediateForClean :  "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    invoke-static {v6, v1, v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_3

    :cond_6
    :goto_2
    const-string v1, "(immediate) getLastImmediateOnData CLEAN_WEB : "

    invoke-static {v8, v1, v6}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f140e48

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isCleanAllOff()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120050

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140e49

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryClean:Ljava/lang/String;

    return-void

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanStatus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->isBlocked()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->getBlockedCountToday()I

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;->getType()I

    move-result v6

    move v7, v6

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_f

    const/4 v1, 0x1

    if-eq v2, v1, :cond_b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_b

    goto/16 :goto_6

    :cond_b
    if-ne v2, v1, :cond_c

    invoke-direct {p0, v7, v4}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getSummaryWorkingOne(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120051

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getSubSummaryWorkingSome(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryClean:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "\n"

    invoke-static {v1, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_e
    invoke-static {v1}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryClean:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryClean:Ljava/lang/String;

    goto :goto_5

    :cond_f
    invoke-direct {p0, v3, v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getSummaryWithNoData(II)V

    :cond_10
    :goto_6
    return-void
.end method

.method private getSummaryForPrivacy(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getBlockedToday(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Ljava/util/ArrayList;)I

    move-result p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryPrivacy:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(immediate) mImmediateForPrivacy :  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrivacyGraph"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isPrivacyAllOff()Z

    move-result v2

    const-string v4, "(immediate) mImmediateForPrivacy : "

    const/4 v5, -0x1

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->PRIVACY:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getLastImmediateOffData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v6

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getCurrentData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v7

    if-ge v6, v7, :cond_2

    if-ne v6, v5, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    invoke-static {v3, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_3

    :cond_2
    :goto_1
    const-string p1, "(immediate) getLastImmediateOffData PRIVACY : "

    invoke-static {v6, p1, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140a97

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryPrivacy:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140a98

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryPrivacy:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveLastImmediateOffData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result p0

    const-string p1, "(immediate) saveLastImmediateOffData PRIVACY : "

    invoke-static {p0, p1, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->PRIVACY:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getLastImmediateOnData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v6

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getCurrentData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v7

    if-ge v6, v7, :cond_5

    if-ne v6, v5, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    invoke-static {v3, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_3

    :cond_5
    :goto_2
    const-string p1, "(immediate) save getLastImmediateOnData PRIVACY : "

    invoke-static {v6, p1, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140e53

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryPrivacy:Ljava/lang/String;

    return-void

    :cond_6
    :goto_3
    if-eqz p2, :cond_9

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mTrackerCount:I

    if-ne p2, v1, :cond_8

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140e5c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryPrivacy:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f140e5b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryPrivacy:Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f140e5a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mTrackerCount:I

    invoke-direct {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedTwoNumberString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryPrivacy:Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120058

    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryPrivacy:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140e59

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryPrivacy:Ljava/lang/String;

    :goto_4
    return-void
.end method

.method private getSummarySecretModeClean()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140948

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140643

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "(immediate) mImmediateForClean :  "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    const-string v4, "PrivacyGraph"

    invoke-static {v4, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isCleanAllOff()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140e47

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140e48

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    const v0, 0x7f140e02

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140e4a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140e4b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140e4c

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSummarySecretModePrivacy()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedSmartAntiTracking:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140e03

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140e58

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSummaryWithNoData(II)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getFeatureWithNoData()I

    move-result v0

    const/4 v1, -0x1

    const v2, 0x7f140e48

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x2

    if-gt p1, v1, :cond_1

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f120050

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getSummaryWithNoData (1) "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    const-string v2, "PrivacyGraph"

    invoke-static {p1, v0, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getSummaryWithNoData (2) "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140e4a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getFeatureToPromote(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f140e4c

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryClean:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private getSummaryWorkingOne(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120057

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120055

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120053

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->formattedNumberString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataPrivacy:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphTrackedDataClean:Ljava/util/ArrayList;

    return-object p0
.end method

.method private initCleanData()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataIntentBlocker:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataPopup:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataBackwardReirect:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockUnwantedWebpagesEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockPopupsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getPackagesCount(Z)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initCleanData => "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    const-string v4, "PrivacyGraph"

    invoke-static {v4, v1, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanStatus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanStatus:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    invoke-direct {v3, v0, v5}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;-><init>(IZ)V

    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanStatus:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;-><init>(IZ)V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanStatus:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    const/4 v5, 0x2

    invoke-direct {v1, v5, v3}, Lcom/sec/android/app/sbrowser/settings/PrivacyStatus;-><init>(IZ)V

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataClean:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataClean:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataClean:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataClean:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphTrackedDataClean:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphTrackedDataClean:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphTrackedDataClean:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphTrackedDataClean:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryClean:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->checkImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "(immediate) mImmediateForClean : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    invoke-static {v4, v1, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mPrevCleanAllStatus:Ljava/util/HashMap;

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isCleanAllOff()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "(immediate) previously all OFF --> somethings ON now"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mPrevCleanAllStatus:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isCleanAllOff()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "(immediate) previously somethings ON --> all OFF now"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private initDateRange()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-direct {v4, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(J)V

    const/4 v1, 0x1

    aput-object v4, v3, v1

    const/4 v2, 0x5

    const/4 v3, -0x6

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-direct {v4, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(J)V

    const/4 v2, 0x0

    aput-object v4, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "initDateRange sDate : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PrivacyGraph"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "initDateRange eDate : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getDisplayString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initPrivacyData()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataSat:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedSmartAntiTracking:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initPrivacyData => "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedSmartAntiTracking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyGraph"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataPrivacy:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataPrivacy:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataPrivacy:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryPrivacy:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryPrivacy:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->PRIVACY:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->checkImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(immediate) mImmediateForPrivacy : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    invoke-static {v1, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mPrevPrivacyAllStatus:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isPrivacyAllOff()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "(immediate) previously OFF --> ON now"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;Z)V

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mPrevPrivacyAllStatus:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isPrivacyAllOff()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "(immediate) previously ON --> OFF now"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isCleanAllOff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isCleanWithNoData()Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataBackwardReirect:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataPopup:I

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    if-eqz v2, :cond_2

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataIntentBlocker:I

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    add-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private isPrivacyWithNoData()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedSmartAntiTracking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataSat:I

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mListener:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataPopup:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataSat:I

    return-void
.end method

.method private synthetic lambda$setCleanListener$0(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanDataReady:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanDataReady:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->setCleanGraphStatus()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mTrackerCount:I

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->setPrivacyGraphStatus()V

    return-void
.end method

.method private requestGraphDataIntentBlocker(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getCountsByDate(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Z)Ljava/util/Map;

    move-result-object p1

    const-string p2, "PrivacyGraph"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataIntentBlocker:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataIntentBlocker:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestGraphDataIntentBlocker(mDataIntentBlocker) : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataIntentBlocker:I

    invoke-static {v0, v1, p2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphTrackedDataClean:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Block apps to open Internet - OFF, so do not add on graph"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataClean:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanListener:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;->onCleanDataReady(I)V

    return-object p1
.end method

.method private requestGraphDataPopup(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v4

    new-instance v1, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;

    invoke-direct {v1}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;-><init>()V

    new-instance v6, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;

    invoke-direct {v6, p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;-><init>(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Ljava/util/Map;)V

    invoke-virtual/range {v1 .. v6}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;->getPopupBlockerCounts(JJLcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;)V

    return-object v0
.end method

.method private requestGraphDataSAT(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestGraphDataSAT  level : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrivacyGraph"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v5

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;

    invoke-direct {v4}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;-><init>()V

    new-instance v9, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;

    invoke-direct {v9, p0, v1, v0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;-><init>(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;ILjava/util/Map;Ljava/util/HashMap;)V

    invoke-virtual/range {v4 .. v9}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;->getAntiTrackingStats(JJLcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;)V

    return-object v0
.end method

.method private requestGraphDataUnwanted(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->getBlockedCountsByDate(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataBackwardReirect:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataBackwardReirect:I

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "requestGraphDataUnwanted(mDataBackwardReirect) : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataBackwardReirect:I

    const-string v1, "PrivacyGraph"

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    const/4 v0, 0x2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphTrackedDataClean:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Block backward redirections - OFF, so do not add on graph"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataClean:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanListener:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;->onCleanDataReady(I)V

    return-object p1
.end method

.method private resetLastImmediateOffData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    const/4 v0, -0x1

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->saveLastAllOffClean(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->saveLastAllOffPrivacy(I)V

    :goto_0
    return v0
.end method

.method private resetLastImmediateOnData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    const/4 v0, -0x1

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->saveLastOnClean(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->saveLastOnPrivacy(I)V

    :goto_0
    return v0
.end method

.method private saveImmediateState(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "(immediate) saveImmediateState type : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", set : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PrivacyGraph"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->saveImmediateClean(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->saveImmediatePrivacy(Z)V

    :goto_0
    return-void
.end method

.method private saveLastImmediateOffData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataBackwardReirect:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataPopup:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataIntentBlocker:I

    add-int/2addr p1, p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->saveLastAllOffClean(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataSat:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->saveLastAllOffPrivacy(I)V

    :goto_0
    return p1
.end method

.method private saveLastImmediateOnData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedBackward:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataBackwardReirect:I

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedPopup:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataPopup:I

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/2addr p1, v1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedAllowedapps:Z

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataIntentBlocker:I

    :cond_2
    add-int/2addr p1, v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->saveLastOnClean(I)V

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataSat:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->saveLastOnPrivacy(I)V

    :goto_2
    return p1
.end method

.method private setCleanGraphStatus()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isCleanAllOff()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isCleanWithNoData()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mIsCleanGraphOff:Z

    return-void
.end method

.method private setCleanListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanDataReady:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/j;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mCleanListener:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;

    return-void
.end method

.method private setListener(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mListener:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;

    return-void
.end method

.method private setPrivacyGraphStatus()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isPrivacyAllOff()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isPrivacyWithNoData()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mIsPrivacyGraphOff:Z

    return-void
.end method

.method private updateGraphData()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->initDateRange()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->updateGraphDataClean()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->updateGraphDataPrivacy()V

    return-void
.end method


# virtual methods
.method public getEndDateTimeInMillis()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGraphDataClean()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataClean:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getGraphDataPrivacy()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/common/utils/DateOnly;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataPrivacy:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getGraphSubSummaryClean()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryClean:Ljava/lang/String;

    return-object p0
.end method

.method public getGraphSubSummaryPrivacy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSubSummaryPrivacy:Ljava/lang/String;

    return-object p0
.end method

.method public getGraphSummaryClean()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryClean:Ljava/lang/String;

    return-object p0
.end method

.method public getGraphSummaryPrivacy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mSummaryPrivacy:Ljava/lang/String;

    return-object p0
.end method

.method public getModuleData(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "anti_tracking_level"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "block_unwanted_webpages"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "block_popups"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataSat:I

    return p0

    :pswitch_1
    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataBackwardReirect:I

    return p0

    :pswitch_2
    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mDataPopup:I

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x2936eac7 -> :sswitch_2
        0x3d30d595 -> :sswitch_1
        0x5a753279 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStartDateTimeInMillis()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public isCleanGraphOff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mIsCleanGraphOff:Z

    return p0
.end method

.method public isPrivacyAllOff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mBlockedSmartAntiTracking:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPrivacyGraphOff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mIsPrivacyGraphOff:Z

    return p0
.end method

.method public onDestroy()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForClean:Z

    const-string v1, "PrivacyGraph"

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isCleanAllOff()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->resetLastImmediateOnData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v0

    const-string v2, "(immediate) tracking OFF, reset ON data CLEAN_WEB: "

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->CLEAN_WEB:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->resetLastImmediateOffData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v2

    const-string v3, "(immediate) tracking ON, reset OFF data CLEAN_WEB: "

    invoke-static {v2, v3, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveLastImmediateOnData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v0

    const-string v2, "(immediate) saveLastImmediateOnData CLEAN_WEB : "

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mImmediateForPrivacy:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isPrivacyAllOff()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->PRIVACY:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->resetLastImmediateOnData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result p0

    const-string v0, "(immediate) tracking OFF, reset ON data PRIVACY: "

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;->PRIVACY:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->resetLastImmediateOffData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result v2

    const-string v3, "(immediate) tracking ON, reset OFF data PRIVACY: "

    invoke-static {v2, v3, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->saveLastImmediateOnData(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$DataType;)I

    move-result p0

    const-string v0, "(immediate) saveLastImmediateOnData PRIVACY : "

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateGraphDataClean()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->initCleanData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->collectGraphDataForClean()V

    return-void
.end method

.method public updateGraphDataPrivacy()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->initPrivacyData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->collectGraphDataForPrivacy()V

    return-void
.end method

.method public updatePrivacySummary()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mRange:[Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->mGraphDataPrivacy:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->getSummaryForPrivacy(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Ljava/util/ArrayList;)V

    return-void
.end method
