.class public Lcom/sec/terrace/content/browser/TinContentView;
.super Lorg/chromium/components/embedder_support/view/ContentView;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/TinSmartClipProvider;


# instance fields
.field private mAxAllowed:Z

.field private mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

.field private mIsRequestedStylusUnbufferedDispatch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/embedder_support/view/ContentView;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public static isAccessibilityAllowedForAutofill(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->getAutofillServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/terrace/content/browser/TinContentView;->isAllowedPackageForAccessibility(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isAllowedPackage(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isSARTEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentView;->isAccessibilityAllowedForAutofill(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    return v1

    :cond_4
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/sec/terrace/content/browser/TinContentView;->isAllowedPackageForAccessibility(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isAllowedPackageForAccessibility(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/TinTerraceInternals;->getAXWhiteListNames(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private releaseDragAndDropPermissions()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentView;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DragAndDropPermissions;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinContentView;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getRenderCoordinates()Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/EventForwarder;->setCurrentTouchOffsetY(F)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_3

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/ui/base/EventForwarder;->setCurrentTouchOffsetY(F)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentView;->releaseDragAndDropPermissions()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_6

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentView;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    :cond_6
    :goto_1
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p1}, Lorg/chromium/components/embedder_support/view/ContentView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/sec/terrace/content/browser/TinContentView;->handleKeyLongPress(Landroid/view/KeyEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_4

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_2

    const/16 v4, 0x5d

    if-ne v2, v4, :cond_4

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinContentView;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getFastScrollManager()Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastScrollBitmap(I)V

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastScrollBitmap(I)V

    invoke-virtual {v4, v3}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastScrollBitmap(I)V

    invoke-virtual {v4}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->onScrollBegin()V

    invoke-virtual {v4, v3}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastScrollByKeyEvent(Z)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const-string v6, "201"

    const-string v7, "202"

    if-nez v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x1d

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1f

    if-eq v2, v4, :cond_5

    const/16 v4, 0x32

    if-eq v2, v4, :cond_5

    const/16 v4, 0x34

    if-ne v2, v4, :cond_7

    :cond_5
    iget-object v4, v0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v7

    goto :goto_1

    :cond_6
    move-object v4, v6

    :goto_1
    const-string v8, "9100"

    invoke-static {v4, v8}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v8, 0xa0

    if-ne v4, v8, :cond_8

    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v20

    const/16 v15, 0x42

    move-object v9, v0

    invoke-direct/range {v9 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v1, v0}, Lorg/chromium/ui/base/EventForwarder;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0x3d

    if-ne v1, v4, :cond_a

    iget-object v1, v0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v7

    goto :goto_2

    :cond_9
    move-object v1, v6

    :goto_2
    const-string v4, "9102"

    invoke-static {v1, v4}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_c

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v5, "2"

    goto :goto_3

    :pswitch_1
    const-string v5, "1"

    goto :goto_3

    :pswitch_2
    const-string v5, "4"

    goto :goto_3

    :pswitch_3
    const-string v5, "3"

    :goto_3
    if-eqz v5, :cond_c

    iget-object v1, v0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v6, v7

    :cond_b
    const-string v1, "9162"

    invoke-static {v6, v1, v5}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0x4f

    if-eq v2, v1, :cond_e

    const/16 v1, 0x55

    if-eq v2, v1, :cond_e

    const/16 v1, 0x7e

    if-eq v2, v1, :cond_e

    const/16 v1, 0x7f

    if-eq v2, v1, :cond_e

    :cond_d
    move-object/from16 v1, p1

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v3

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v4, 0x20

    if-ne v2, v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinContentView;->getImeAdapter()Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->hasSelection()Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v0, 0x43

    const/4 v1, 0x6

    invoke-virtual {v2, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendSyntheticKeyPress(II)V

    return v3

    :cond_f
    invoke-super/range {p0 .. p1}, Lorg/chromium/components/embedder_support/view/ContentView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public extractSmartClipData(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/components/embedder_support/view/ContentView;->extractSmartClipData(IIII)V

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "202"

    goto :goto_0

    :cond_0
    const-string p0, "201"

    :goto_0
    const-string p1, "2180"

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isSARTEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TinContentView"

    const-string v1, "getAccessibilityNodeProvider - SART mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getWebContentsAccessibility()Lorg/chromium/content_public/browser/WebContentsAccessibility;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->getAccessibilityNodeProviderChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentView;->mAxAllowed:Z

    if-eqz v0, :cond_2

    invoke-super {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    :cond_3
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->setAccessibilityNodeProviderChecked(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContentView;->isAllowedPackage(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentView;->mAxAllowed:Z

    if-eqz v0, :cond_4

    invoke-super {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public getImeAdapter()Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    move-result-object p0

    return-object p0
.end method

.method public getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public getSmartClipImageData(IIIIII)V
    .locals 7

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    move-object v0, p0

    check-cast v0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/terrace/content/browser/TinWebContentsImpl;->getSmartClipImageData(IIIIII)V

    :cond_0
    return-void
.end method

.method public getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTinSPenHoverScroller()Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    move-result-object p0

    return-object p0
.end method

.method public getTinSelectPopup()Lcom/sec/terrace/content/browser/input/TinSelectPopup;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    move-result-object p0

    return-object p0
.end method

.method public handleKeyLongPress(Landroid/view/KeyEvent;)Z
    .locals 12
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0xa0

    const/16 v3, 0x42

    const/16 v4, 0x17

    const/16 v5, 0x3c

    const/16 v6, 0x3b

    const/16 v7, 0x72

    const/16 v8, 0x71

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    const-string p0, "TinContentView"

    const-string p1, "handleKeyLongPress returning false.."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-eqz p1, :cond_b

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_6

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_b

    if-eq v0, v8, :cond_5

    if-ne v0, v7, :cond_3

    goto :goto_0

    :cond_3
    if-eq v0, v6, :cond_4

    if-ne v0, v5, :cond_b

    :cond_4
    invoke-virtual {v9, v11}, Lorg/chromium/ui/base/EventForwarder;->setMetaStateForDexLive(I)V

    goto :goto_3

    :cond_5
    :goto_0
    const/16 p0, 0x1000

    invoke-virtual {v9, p0}, Lorg/chromium/ui/base/EventForwarder;->setMetaStateForDexLive(I)V

    goto :goto_3

    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->handleKeyLongPress()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "202"

    goto :goto_2

    :cond_7
    const-string p0, "201"

    :goto_2
    const-string p1, "9101"

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_8
    return v1

    :cond_9
    if-eqz v9, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v11, :cond_b

    if-eq v0, v8, :cond_a

    if-eq v0, v7, :cond_a

    if-eq v0, v6, :cond_a

    if-ne v0, v5, :cond_b

    :cond_a
    invoke-virtual {v9, v1}, Lorg/chromium/ui/base/EventForwarder;->setMetaStateForDexLive(I)V

    :cond_b
    :goto_3
    return v1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    const-string v0, "TinContentView"

    const-string v1, "onCreateInputConnection Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lorg/chromium/components/embedder_support/view/ContentView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->handleDragDrop(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/components/embedder_support/view/ContentView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFocusChanged: gainFocus = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInTouchMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFocusableInTouchMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lorg/chromium/components/embedder_support/view/ContentView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/TerraceContentViewCallback;->onHoverExit()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->shouldBitmapCompositedLayersConsumeHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexDualMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->getTinSPenHoverScroller()Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->getTinSPenHoverScroller()Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->handleHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-super {p0, p1}, Lorg/chromium/components/embedder_support/view/ContentView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->getWebContentsAccessibility()Lorg/chromium/content_public/browser/WebContentsAccessibility;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->onProvideVirtualStructure(Landroid/view/ViewStructure;Z)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->getTinContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/terrace/content/browser/TinContentViewCore;->onSizeChanged(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->getTinSelectPopup()Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->getTinSelectPopup()Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->resizeWebSelectDialog()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    check-cast v0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentView;->mIsRequestedStylusUnbufferedDispatch:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/TinContentView;->mIsRequestedStylusUnbufferedDispatch:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentView;->mIsRequestedStylusUnbufferedDispatch:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/TinContentView;->mIsRequestedStylusUnbufferedDispatch:Z

    :cond_2
    invoke-super {p0, p1}, Lorg/chromium/components/embedder_support/view/ContentView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    const-string v0, "onWindowFocusChanged: hasWindowFocus = "

    const-string v1, "TinContentView"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lorg/chromium/components/embedder_support/view/ContentView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public requestStylusUnbufferedDispatch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentView;->mIsRequestedStylusUnbufferedDispatch:Z

    return-void
.end method

.method public setImportantForAutofillForVirtualView(Z)V
    .locals 0

    return-void
.end method

.method public setSmartClipImageResultHandler(Landroid/os/Handler;)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentView;->hasValidWebContents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    check-cast p0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinWebContentsImpl;->setSmartClipImageResultHandler(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method
