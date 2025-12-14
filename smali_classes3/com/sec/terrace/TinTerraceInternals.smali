.class public Lcom/sec/terrace/TinTerraceInternals;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static calculateKeyboardHeight()I
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->calculateKeyboardHeight()I

    move-result v0

    return v0
.end method

.method public static createExtensionTerraceWithWebContents(ZLorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/Terrace;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/terrace/TerraceHelper;->createExtensionTerraceWithWebContents(ZLorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0
.end method

.method public static dismissExtensionsRenderView()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->dismissExtensionsRenderView()V

    return-void
.end method

.method public static getAXWhiteListNames(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceHelper;->getAXWhiteListNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAccountChooserDialogBridge(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogBridge;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getAccountChooserDialogBridge()Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogBridge;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBackgroundColor(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isNightModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/terrace/R$color;->night_mode_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isHighContrastModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/sec/terrace/R$color;->high_contrast_mode_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getCompositorView(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getRenderView()Landroid/widget/FrameLayout;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;

    return-object p0
.end method

.method public static getCurrentTerraceActivity()Landroid/app/Activity;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    return-object v0
.end method

.method public static getLastTrackedFocusedActivity()Landroid/app/Activity;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static getOrigin(Lcom/sec/terrace/TerraceOrigin;)Lorg/chromium/url/Origin;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceOrigin;->getOrigin()Lorg/chromium/url/Origin;

    move-result-object p0

    return-object p0
.end method

.method public static getRefreshIconTopOffset(Z)I
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceHelper;->getRefreshIconTopOffset(Z)I

    move-result p0

    return p0
.end method

.method public static getWindowAndroid(Lcom/sec/terrace/TerraceActivity;)Lorg/chromium/ui/base/WindowAndroid;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    return-object p0
.end method

.method public static isAiFeatureEnabledInKnoxEDM()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isAiFeatureEnabledInKnoxEDM()Z

    move-result v0

    return v0
.end method

.method public static isChinaApk()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isChinaApk()Z

    move-result v0

    return v0
.end method

.method public static isDexDualMode()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isDexDualMode()Z

    move-result v0

    return v0
.end method

.method public static isDexEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isDexEnabled()Z

    move-result v0

    return v0
.end method

.method public static isExtensionsViewLaunched()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isActiveTerraceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->isExtensionsViewLaunched()Z

    move-result v0

    return v0
.end method

.method public static isHideStatusBarEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isHideStatusBarEnabled()Z

    move-result v0

    return v0
.end method

.method public static isKeyboardTurnedOn()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isKeyboardTurnedOn()Z

    move-result v0

    return v0
.end method

.method public static isParentalControlEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isParentalControlEnabled()Z

    move-result v0

    return v0
.end method

.method public static isPlatformAiFeaturesEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isPlatformAiFeaturesEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSARTEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isSARTEnabled()Z

    move-result v0

    return v0
.end method

.method public static isWearOs()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isWearOs()Z

    move-result v0

    return v0
.end method

.method public static performHapticFeedbackForDragStart(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceHelper;->performHapticFeedbackForDragStart(Landroid/view/View;)V

    return-void
.end method

.method public static readFileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/terrace/TerraceHelper;->readFileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setLaunchedExtensionView(Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;Lorg/chromium/ui/base/ActivityWindowAndroid;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/terrace/TerraceActivity;->setLaunchedExtensionView(Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;Lorg/chromium/ui/base/ActivityWindowAndroid;)V

    return-void
.end method

.method public static showShareDialog(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/terrace/TerraceHelper;->showShareDialog(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;ILandroid/graphics/RectF;Landroid/graphics/Point;)Z
    .locals 8

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/terrace/TerraceHelper;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;ILandroid/graphics/RectF;Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method
