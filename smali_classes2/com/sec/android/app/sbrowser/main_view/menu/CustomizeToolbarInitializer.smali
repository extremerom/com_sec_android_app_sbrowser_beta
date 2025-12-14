.class public Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static initMoreMenuManager()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer$1;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->setDelegate(Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;)V

    return-void
.end method

.method private static initToolbarExtensionManager()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer$2;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->setSixDelegate(Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;)V

    return-void
.end method

.method public static initialize()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer;->initMoreMenuManager()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer;->initToolbarExtensionManager()V

    return-void
.end method
