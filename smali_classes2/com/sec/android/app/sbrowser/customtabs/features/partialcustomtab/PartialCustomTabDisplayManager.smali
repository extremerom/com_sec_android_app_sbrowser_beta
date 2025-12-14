.class public Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;
.super Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/lifecycle/ConfigurationChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager$SizeStrategyCreator;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mActivityLifecycleDispatcher:Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;

.field private final mBreakPointDp:I

.field private mCurrentPartialCustomTabType:I

.field private mCustomTabToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

.field private final mHandleStrategyFactory:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;

.field private final mIntentData:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

.field private final mIsTablet:Z

.field private final mLastMaximizeState:Landroid/util/SparseBooleanArray;

.field private final mOnActivityLayoutCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;

.field private final mOnMinimizeCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnResizedCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;

.field private final mSizeStrategyCreator:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager$SizeStrategyCreator;

.field private mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

.field private final mTab:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarCoordinatorView:Landroid/view/View;

.field private mToolbarCornerRadius:I

.field private final mTouchEventProvider:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/TouchEventProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCompat:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;",
            "Ljava/util/function/Supplier<",
            "Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/TouchEventProvider;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            ">;",
            "Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;",
            "Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mLastMaximizeState:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/i;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/i;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mSizeStrategyCreator:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager$SizeStrategyCreator;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIntentData:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mTouchEventProvider:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mTab:Ljava/util/function/Supplier;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnResizedCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnActivityLayoutCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mActivityLifecycleDispatcher:Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnMinimizeCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iput-boolean p9, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIsTablet:Z

    invoke-interface {p8, p0}, Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;->register(Landroidx/lifecycle/I;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/g;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p4}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/g;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;I)V

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->create(Landroid/app/Activity;Ljava/lang/Runnable;)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mVersionCompat:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;

    new-instance p1, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mHandleStrategyFactory:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getActivityBreakPoint()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->calculateBreakPoint(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mBreakPointDp:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->calculatePartialCustomTabType()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mCurrentPartialCustomTabType:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "create(): type => "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mCurrentPartialCustomTabType:I

    const-string p4, "PartialCustomTabDisplayManager"

    invoke-static {p1, p3, p4}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mCurrentPartialCustomTabType:I

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->g(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;ILcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Z)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    return-void
.end method

.method private static calculateBreakPoint(I)I
    .locals 1

    const/16 v0, 0x258

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private calculatePartialCustomTabType()I
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIntentData:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getInitialActivityWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIntentData:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getInitialActivityHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mVersionCompat:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/h;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/h;-><init>(ILjava/lang/Object;)V

    iget v3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mBreakPointDp:I

    invoke-static {v2, v0, v1, v4, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->calculatePartialCustomTabType(Landroid/app/Activity;IILjava/util/function/Supplier;I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIntentData:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isExtraLaunchWithReadArticlesAloud()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    return v0
.end method

.method private static calculatePartialCustomTabType(Landroid/app/Activity;IILjava/util/function/Supplier;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x2

    const/4 v1, 0x1

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p1, p4, :cond_2

    move p0, v1

    :cond_2
    return p0

    :cond_3
    if-lez p1, :cond_5

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p1, p4, :cond_4

    goto :goto_0

    :cond_4
    move v0, p0

    :goto_0
    return v0

    :cond_5
    if-lez p2, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method private createSizeStrategy(ILcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Z)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "createSizeStrategy(): "

    const-string v3, "PartialCustomTabDisplayManager"

    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_0
    new-instance v10, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mActivity:Landroid/app/Activity;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIntentData:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnResizedCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnActivityLayoutCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnMinimizeCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mActivityLifecycleDispatcher:Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;

    iget-boolean v8, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIsTablet:Z

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mHandleStrategyFactory:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;-><init>(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;ZLcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;)V

    move-object v0, v10

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mActivity:Landroid/app/Activity;

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIntentData:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnResizedCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnActivityLayoutCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;

    iget-boolean v2, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIsTablet:Z

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mHandleStrategyFactory:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;

    move-object v11, v1

    move/from16 v16, v2

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabFullSizeStrategy;-><init>(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;ZLcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mActivity:Landroid/app/Activity;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIntentData:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnResizedCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnActivityLayoutCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;

    iget-boolean v8, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIsTablet:Z

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mHandleStrategyFactory:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;

    move-object v3, v1

    move/from16 v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;-><init>(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;ZZLcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mActivity:Landroid/app/Activity;

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIntentData:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mTouchEventProvider:Ljava/util/function/Supplier;

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mTab:Ljava/util/function/Supplier;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnResizedCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mOnActivityLayoutCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mActivityLifecycleDispatcher:Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;

    iget-boolean v5, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIsTablet:Z

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mHandleStrategyFactory:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;

    move-object v11, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, p3

    move-object/from16 v21, v0

    invoke-direct/range {v11 .. v21}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy;-><init>(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;ZZLcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;)V

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->lambda$onConfigurationChanged$0()V

    return-void
.end method

.method public static synthetic f(Landroid/app/Activity;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->lambda$getStartAnimationOverride$2(Landroid/app/Activity;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;ILcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Z)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->createSizeStrategy(ILcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Z)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    move-result-object p0

    return-object p0
.end method

.method public static getStartAnimationOverride(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;I)I
    .locals 4
    .param p2    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getInitialActivityWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getInitialActivityHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getActivityBreakPoint()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->calculateBreakPoint(I)I

    move-result v3

    invoke-static {p0, v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->calculatePartialCustomTabType(Landroid/app/Activity;IILjava/util/function/Supplier;I)I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isExtraLaunchWithReadArticlesAloud()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    const v0, 0x7f010118

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v3, 0x3

    if-eq p0, v3, :cond_2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_5

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSideSheetSlideInBehavior()I

    move-result p0

    if-ne p0, v2, :cond_3

    :cond_2
    :goto_0
    move p2, v0

    goto :goto_2

    :cond_3
    if-ne p0, v1, :cond_5

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSideSheetPosition()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;->isSheetOnRight(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f010110

    :goto_1
    move p2, p0

    goto :goto_2

    :cond_4
    const p0, 0x7f01010f

    goto :goto_1

    :cond_5
    :goto_2
    return p2
.end method

.method public static synthetic h()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->lambda$getStartAnimationOverride$1()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->updatePosition()V

    return-void
.end method

.method private static isInMultiWindow(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getMultiWindow(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getStartAnimationOverride$1()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$getStartAnimationOverride$2(Landroid/app/Activity;)Ljava/lang/Integer;
    .locals 2

    new-instance v0, LN4/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LN4/a;-><init>(I)V

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->create(Landroid/app/Activity;Ljava/lang/Runnable;)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->getDisplayWidthDp()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onConfigurationChanged$0()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mToolbarCoordinatorView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mCustomTabToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    iget v3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mToolbarCornerRadius:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->onToolbarInitialized(Landroid/view/View;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->onPostInflationStartup()V

    return-void
.end method

.method private updatePosition()V
    .locals 0

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->destroy()V

    return-void
.end method

.method public handleCloseAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->handleCloseAnimation(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->calculatePartialCustomTabType()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mCurrentPartialCustomTabType:I

    if-eq v0, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->destroy()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mLastMaximizeState:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->getStrategyType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->isMaximized()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mLastMaximizeState:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mSizeStrategyCreator:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager$SizeStrategyCreator;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mIntentData:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-interface {v1, v0, v2, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager$SizeStrategyCreator;->createForType(ILcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Z)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mCurrentPartialCustomTabType:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mToolbarCoordinatorView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mCustomTabToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->setToolbar(Landroid/view/View;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/g;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;I)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->onConfigurationChanged(I)V

    :goto_0
    return-void
.end method

.method public onFindToolbarHidden()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->onFindToolbarHidden()V

    return-void
.end method

.method public onFindToolbarShown()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->onFindToolbarShown()V

    return-void
.end method

.method public onPostInflationStartup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->onPostInflationStartup()V

    return-void
.end method

.method public onToolbarInitialized(Landroid/view/View;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;I)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mToolbarCoordinatorView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mCustomTabToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    iput p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mToolbarCornerRadius:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->mStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->onToolbarInitialized(Landroid/view/View;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;I)V

    return-void
.end method
