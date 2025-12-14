.class Lcom/sec/android/app/sbrowser/utils/BrowserUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceHelper$TerraceHelperDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/utils/BrowserUtil;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/utils/BrowserUtil$1;->lambda$showSelectionNotAllowedMessage$0(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$showSelectionNotAllowedMessage$0(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    sget-object p2, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;->TEXT:Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->saveToClipboard(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$DataType;)V

    return-void
.end method


# virtual methods
.method public calculateKeyboardHeight(Lcom/sec/terrace/TerraceActivity;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->calculateKeyboardHeight(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public doesSupportSpen()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportSpen()Z

    move-result p0

    return p0
.end method

.method public getAXWhiteListNames(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "AXWhiteList"

    const-string v1, "default"

    invoke-virtual {p0, v0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getString(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlatformOneUIVersion()I
    .locals 0

    sget p0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    return p0
.end method

.method public getRefreshIconTopOffset(Z)I
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070cd9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v2, 0x7f071646

    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f0714c4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    add-int/2addr v0, p1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f0701e3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    add-int/2addr v0, p1

    :cond_4
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    add-int/2addr v0, p0

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p0

    add-int/2addr v0, p0

    :cond_6
    return v0
.end method

.method public isAiFeatureEnabledInKnoxEDM()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->getWritingToolkitStatusSetByEDM()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBetaApk()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result p0

    return p0
.end method

.method public isChinaApk()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isCnApk()Z

    move-result p0

    return p0
.end method

.method public isHideStatusBarEnabled(Lcom/sec/terrace/TerraceActivity;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isKeyboardTurnedOn(Lcom/sec/terrace/TerraceActivity;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isParentalControlEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSupportAIByParentControl()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPlatformAiFeaturesEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isNativeAiEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->getConfigAiVersion()I

    move-result p0

    const/16 v0, 0x4f12

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRizeApk()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isRizeApk()Z

    move-result p0

    return p0
.end method

.method public isSARTEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isSARTEnabled()Z

    move-result p0

    return p0
.end method

.method public performHapticFeedbackForDragStart(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->performVibrationFeedbackForDragStart(Landroid/view/View;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;->performSoundFeedbackForDragStart()V

    return-void
.end method

.method public readFileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public showSelectionNotAllowedMessage(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f140e70

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1403df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/utils/a;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/sbrowser/utils/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/utils/BrowserUtil;->showSnackbar(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showShareDialog(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    invoke-static {p1, p3, p4}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->getGridAreaDirection(Landroid/content/Context;II)I

    move-result p0

    new-instance p3, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4, p2}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->setGridAreaDirectionForPopOver(I)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->build()Lcom/sec/android/app/sbrowser/common/utils/ShareParams;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->showShareDialog(Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z

    return-void
.end method

.method public startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;ILandroid/graphics/RectF;Landroid/graphics/Point;)Z
    .locals 7

    sget p0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v0, 0x9ca4

    if-ge p0, v0, :cond_0

    or-int/lit16 p5, p5, 0x200

    :cond_0
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;ILandroid/graphics/RectF;Landroid/graphics/Point;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "BrowserUtil"

    const-string p6, "Platform custom Start Drag and Drop api not found"

    invoke-static {p0, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method
