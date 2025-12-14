.class public Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;,
        Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->lambda$createStrategy$0(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;II)V

    return-void
.end method

.method public static createStrategy(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;Z)Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;",
            "Ljava/util/function/Supplier<",
            "Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/TouchEventProvider;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            ">;",
            "Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;",
            "Z)",
            "Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;"
        }
    .end annotation

    move-object/from16 v0, p4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isPartialCustomTab()Z

    move-result v1

    const-string v2, "CustomTabHeightStrategy"

    if-nez v1, :cond_0

    const-string v0, "createStrategy(): CustomTabHeightStrategy"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSession()LH/y;

    move-result-object v1

    new-instance v8, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/a;

    invoke-direct {v8, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/a;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;)V

    new-instance v9, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/a;

    invoke-direct {v9, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/a;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;)V

    const-string v0, "createStrategy(): PartialCustomTabDisplayManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v3 .. v12}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;-><init>(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;Z)V

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;IIIII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->lambda$createStrategy$1(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;IIIII)V

    return-void
.end method

.method private static synthetic lambda$createStrategy$0(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->onResized(LH/y;II)V

    return-void
.end method

.method private static synthetic lambda$createStrategy$1(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;IIIII)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->onActivityLayout(LH/y;IIIII)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public handleCloseAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Custom close animation should be performed only on partial custom tab."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onFindToolbarHidden()V
    .locals 0

    return-void
.end method

.method public onFindToolbarShown()V
    .locals 0

    return-void
.end method

.method public onPostInflationStartup()V
    .locals 0

    return-void
.end method

.method public onToolbarInitialized(Landroid/view/View;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;I)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    return-void
.end method
