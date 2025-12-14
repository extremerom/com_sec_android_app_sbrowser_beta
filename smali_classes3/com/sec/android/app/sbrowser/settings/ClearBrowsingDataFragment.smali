.class public Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;,
        Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingDataCallbackHandler;,
        Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;,
        Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;
    }
.end annotation


# static fields
.field private static final TIME_RANGE_TITLE_LIST:[I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

.field mAdapterListener:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;

.field private mAutocompleteCallbackDone:Z

.field private mAutocompleteData:J

.field private mAutofillCallbackDone:Z

.field private mAutofillData:J

.field public mButton:Landroid/widget/Button;

.field private mCacheCallbackDone:Z

.field private mCacheData:J

.field public mCheckBox:Landroid/widget/CheckBox;

.field private mCheckStates:[Z

.field private mClearBrowsingDialog:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;

.field private mCookieCallbackDone:Z

.field private mCookieData:J

.field private mCurrentTimeRange:I

.field private mHistoryData:J

.field private mPasswordCallbackDone:Z

.field private mPasswordData:J

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectedOptions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;",
            ">;"
        }
    .end annotation
.end field

.field private mTerraceBrowsingDataCounterBridgeAutocomplete:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

.field private mTerraceBrowsingDataCounterBridgeAutofill:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

.field private mTerraceBrowsingDataCounterBridgeCache:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

.field private mTerraceBrowsingDataCounterBridgeCookies:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

.field private mTerraceBrowsingDataCounterBridgePasswords:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

.field private mTimeRangeSpinner:Landroid/widget/Spinner;

.field private mTimeRangeTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoHistoryCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f1402ec

    const v1, 0x7f1402e9

    const v2, 0x7f1402eb

    const v3, 0x7f1402ea

    const v4, 0x7f1402ed

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->TIME_RANGE_TITLE_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw2/A;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;-><init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;

    return-void
.end method

.method private addListItemsDecoration()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method private checkDeleteConditions()Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mSelectedOptions:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mSelectedOptions:Ljava/util/EnumSet;

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_HISTORY:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    sget-object v5, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->HISTORY_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getBrowsingDataByPosition(I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mSelectedOptions:Ljava/util/EnumSet;

    sget-object v5, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_COOKIES_AND_SITE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    sget-object v5, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->COOKIES_AND_SITE_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getBrowsingDataByPosition(I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mSelectedOptions:Ljava/util/EnumSet;

    sget-object v5, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_CACHE:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    sget-object v5, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->CACHE_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getBrowsingDataByPosition(I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mSelectedOptions:Ljava/util/EnumSet;

    sget-object v5, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_PASSWORDS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    sget-object v5, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->PASSWORD_INFO_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getBrowsingDataByPosition(I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mSelectedOptions:Ljava/util/EnumSet;

    sget-object v5, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->AUTOFILL_DATA_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getBrowsingDataByPosition(I)J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method private disableDeleteIfNeeded()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->checkDeleteConditions()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private fetchBrowsingData(I)V
    .locals 11

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingDataCallbackHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingDataCallbackHandler;-><init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;-><init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;II)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeCookies:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingDataCallbackHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingDataCallbackHandler;-><init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;-><init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;II)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeCache:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingDataCallbackHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingDataCallbackHandler;-><init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;-><init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;II)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeAutocomplete:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingDataCallbackHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingDataCallbackHandler;-><init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;-><init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;II)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgePasswords:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAutofillData:J

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAutofillCallbackDone:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->setDataIfNeeded()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingDataCallbackHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingDataCallbackHandler;-><init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;-><init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;II)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeAutofill:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->getStartTime(IJ)J

    move-result-wide v9

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mActivity:Landroid/app/Activity;

    move-wide v5, v9

    move-wide v7, v0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getMediaHistoryDataByVisitTime(Landroid/content/Context;JJ)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mVideoHistoryCount:J

    new-instance p1, Lcom/sec/terrace/browser/history/TerraceHistoryModel;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;-><init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V

    invoke-direct {p1, v2}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;-><init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    invoke-virtual {p1, v9, v10, v0, v1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->getHistoryCountByDuration(JJ)V

    return-void
.end method

.method public static getStartTime(IJ)J
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_0
    const-wide v0, 0x90321000L

    :goto_0
    sub-long p0, p1, v0

    goto :goto_1

    :cond_1
    const-wide/32 v0, 0x240c8400

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x5265c00

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0x36ee80

    goto :goto_0

    :goto_1
    return-wide p0
.end method

.method private getTimeRangeArrayAdaptor(I)Landroid/widget/ArrayAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0807be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060236

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v7

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$2;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTimeRangeTitleList:Ljava/util/List;

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$2;-><init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;Landroid/content/Context;ILjava/util/List;ZLandroid/graphics/drawable/Drawable;)V

    const p0, 0x7f0e0144

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)[Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCheckStates:[Z

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCurrentTimeRange:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mHistoryData:J

    return-wide v0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->showDialog()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Ljava/util/EnumSet;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mSelectedOptions:Ljava/util/EnumSet;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTimeRangeSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTimeRangeTitleList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mVideoHistoryCount:J

    return-wide v0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCurrentTimeRange:I

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mHistoryData:J

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->disableDeleteIfNeeded()V

    return-void
.end method

.method private setData()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCacheData:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->setCacheData(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAutocompleteData:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->setAutocompleteData(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCookieData:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->setCookieData(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAutofillData:J

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAutocompleteData:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->setAutofillData(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mPasswordData:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->setPasswordData(J)V

    return-void
.end method

.method private setDataIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCookieCallbackDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCacheCallbackDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mPasswordCallbackDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAutofillCallbackDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAutocompleteCallbackDone:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->setData()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->disableDeleteIfNeeded()V

    :cond_0
    return-void
.end method

.method private setTimeRangeSpinner()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e01f3

    goto :goto_0

    :cond_0
    const v0, 0x7f0e01f2

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->getTimeRangeTitles()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTimeRangeTitleList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->getTimeRangeArrayAdaptor(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTimeRangeSpinner:Landroid/widget/Spinner;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTimeRangeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTimeRangeSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070489

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTimeRangeSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCurrentTimeRange:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTimeRangeSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private showDialog()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mClearBrowsingDialog:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mClearBrowsingDialog:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mSelectedOptions:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->setSelectedOptions(Ljava/util/EnumSet;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mClearBrowsingDialog:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCurrentTimeRange:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->setTimeRange(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mClearBrowsingDialog:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->show(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->fetchBrowsingData(I)V

    return-void
.end method


# virtual methods
.method public getDefaultDialogOptionsSelections()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_CACHE:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_COOKIES_AND_SITE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_HISTORY:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-static {p0, v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public getDialogOptions()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;
    .locals 4

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_HISTORY:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_COOKIES_AND_SITE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_CACHE:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_PASSWORDS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    sget-object v3, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    filled-new-array {p0, v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    move-result-object p0

    return-object p0
.end method

.method public getTimeRangeTitles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->TIME_RANGE_TITLE_LIST:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mActivity:Landroid/app/Activity;

    invoke-super {p0, p1}, Lw2/A;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0e0143

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0b02a6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0e01d8

    invoke-virtual {p1, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0b03da

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mButton:Landroid/widget/Button;

    const p3, 0x7f0b02a4

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTimeRangeSpinner:Landroid/widget/Spinner;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p3

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getClearBrowsingDataTimeRangeSpinnerSelectedIndex(I)I

    move-result p3

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCurrentTimeRange:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->setTimeRangeSpinner()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->showPreferences()V

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCurrentTimeRange:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->fetchBrowsingData(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mButton:Landroid/widget/Button;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/d;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p0}, Lcom/sec/android/app/sbrowser/settings/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mClearBrowsingDialog:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mClearBrowsingDialog:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mClearBrowsingDialog:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeCookies:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeCookies:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeCache:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeCache:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgePasswords:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgePasswords:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeAutofill:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeAutofill:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeAutocomplete:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mTerraceBrowsingDataCounterBridgeAutocomplete:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;

    if-eqz v0, :cond_6

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;

    :cond_6
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->disableDeleteIfNeeded()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lw2/A;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mActivity:Landroid/app/Activity;

    const p2, 0x7f140954

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showPreferences()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->getDialogOptions()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->getResourceId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCheckStates:[Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->getDefaultDialogOptionsSelections()Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mSelectedOptions:Ljava/util/EnumSet;

    move v2, v4

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCheckStates:[Z

    aput-boolean v4, v5, v2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mSelectedOptions:Ljava/util/EnumSet;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCheckStates:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;-><init>(Landroid/content/Context;[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapterListener:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCheckStates:[Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->setmCheckStates([Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->addListItemsDecoration()V

    return-void
.end method

.method public updateRecievedData(JI)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCookieData:J

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCookieCallbackDone:Z

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_1

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCacheData:J

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCacheCallbackDone:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p3, v0, :cond_2

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAutocompleteData:J

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAutocompleteCallbackDone:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mPasswordData:J

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mPasswordCallbackDone:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p3, v0, :cond_4

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAutofillData:J

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mAutofillCallbackDone:Z

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->setDataIfNeeded()V

    return-void
.end method
