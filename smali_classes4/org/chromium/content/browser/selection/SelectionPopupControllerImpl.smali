.class public Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;
.super Lorg/chromium/content_public/browser/ActionModeCallbackHelper;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/ImeEventObserver;
.implements Lorg/chromium/content_public/browser/SelectionPopupController;
.implements Lorg/chromium/content/browser/WindowEventObserver;
.implements Lorg/chromium/content/browser/PopupController$HideablePopup;
.implements Lorg/chromium/ui/base/ViewAndroidDelegate$ContainerViewObserver;
.implements Lorg/chromium/base/UserData;
.implements Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$UserDataFactoryLazyHolder;,
        Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;,
        Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;,
        Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SelectionMenuType;,
        Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final MAX_SHARE_QUERY_LENGTH:I = 0x186a0

.field private static sAllowSurfaceControlMagnifier:Z

.field private static sDisableMagnifierForTesting:Z

.field private static sEnableTabletUiModeForTesting:Z

.field private static sShouldGetReadbackViewFromWindowAndroid:Z


# instance fields
.field protected mActionMode:Landroid/view/ActionMode;

.field private mAllowedMenuItems:I

.field protected mCallback:Lorg/chromium/content_public/browser/ActionModeCallback;

.field protected mCanEditRichly:Z

.field protected mCanSelectAll:Z

.field protected mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

.field protected mContext:Landroid/content/Context;

.field protected final mCustomActionMenuItemClickListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/MenuItem;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDropdownMenuDelegate:Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;

.field private mEditable:Z

.field private final mHandler:Landroid/os/Handler;

.field protected mHasSelection:Z

.field private mHidden:Z

.field private final mIsActionBarShowingSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/ObservableSupplierImpl<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsInHandleDragging:Z

.field private mIsInsertionForTesting:Z

.field private mIsPasswordType:Z

.field private mIsProcessingSelectAll:Z

.field private mLastSelectedText:Ljava/lang/String;

.field private mLastSelectionOffset:I

.field protected mMagnifierAnimator:Lorg/chromium/content/browser/selection/MagnifierAnimator;

.field private mMenuSourceType:I

.field protected mNativeSelectionPopupController:J

.field private mPopupController:Lorg/chromium/content/browser/PopupController;

.field private mPreserveSelectionOnNextLossOfFocus:Z

.field private mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

.field private mRepeatingHideRunnable:Ljava/lang/Runnable;

.field private mResultCallback:Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;

.field protected mSelectionActionMenuDelegate:Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;

.field private mSelectionClient:Lorg/chromium/content_public/browser/SelectionClient;

.field private mSelectionMenuCachedResult:Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;

.field protected final mSelectionRect:Landroid/graphics/Rect;

.field private mSmartSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

.field protected mUnselectAllOnDismiss:Z

.field protected mView:Landroid/view/View;

.field private mWasPastePopupShowingOnInsertionDragStart:Z

.field protected mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

.field protected mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

.field private mXDip:I

.field private mYDip:I


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/PopupController;Z)V

    sget-object p1, Lorg/chromium/content_public/browser/ActionModeCallbackHelper;->EMPTY_CALLBACK:Lorg/chromium/content_public/browser/ActionModeCallbackHelper$EmptyActionCallback;

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCallback:Lorg/chromium/content_public/browser/ActionModeCallback;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/PopupController;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content_public/browser/ActionModeCallbackHelper;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    new-instance v0, Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-direct {v0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsActionBarShowingSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHandler:Landroid/os/Handler;

    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mPopupController:Lorg/chromium/content/browser/PopupController;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->addObserver(Lorg/chromium/ui/base/ViewAndroidDelegate$ContainerViewObserver;)V

    :cond_0
    const/4 p1, 0x7

    iput p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mAllowedMenuItems:I

    new-instance p1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$1;

    invoke-direct {p1, p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$1;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mRepeatingHideRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->maybeFrom(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImplJni;->get()Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-interface {p1, p0, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;->init(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mNativeSelectionPopupController:J

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->addEventObserver(Lorg/chromium/content_public/browser/ImeEventObserver;)V

    :cond_2
    new-instance p1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$SmartSelectionCallback;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;I)V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mResultCallback:Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;

    const-string p1, ""

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectedText:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCustomActionMenuItemClickListeners:Ljava/util/Map;

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getPopupController()Lorg/chromium/content/browser/PopupController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/PopupController;->registerPopup(Lorg/chromium/content/browser/PopupController$HideablePopup;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->lambda$addMenuItemsToActionMenu$4(Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private static addMenuItemsToActionMenu(Landroid/content/Context;Lorg/chromium/content_public/browser/SelectionMenuGroup;Landroid/view/Menu;Ljava/util/Map;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/chromium/content_public/browser/SelectionMenuGroup;",
            "Landroid/view/Menu;",
            "Ljava/util/Map<",
            "Landroid/view/MenuItem;",
            "Landroid/view/View$OnClickListener;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v0

    iget-object v1, p1, Lorg/chromium/content_public/browser/SelectionMenuGroup;->items:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content_public/browser/SelectionMenuItem;

    iget-boolean v3, v2, Lorg/chromium/content_public/browser/SelectionMenuItem;->isEnabled:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p1, Lorg/chromium/content_public/browser/SelectionMenuGroup;->id:I

    iget v4, v2, Lorg/chromium/content_public/browser/SelectionMenuItem;->id:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, p0}, Lorg/chromium/content_public/browser/SelectionMenuItem;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {p2, v3, v4, v0, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, v2, Lorg/chromium/content_public/browser/SelectionMenuItem;->showAsActionFlags:I

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, p0}, Lorg/chromium/content_public/browser/SelectionMenuItem;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    iget-object v4, v2, Lorg/chromium/content_public/browser/SelectionMenuItem;->alphabeticShortcut:Ljava/lang/Character;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :cond_2
    iget-object v4, v2, Lorg/chromium/content_public/browser/SelectionMenuItem;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3
    iget-object v4, v2, Lorg/chromium/content_public/browser/SelectionMenuItem;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_4

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v4, Lcom/sec/android/app/sbrowser/object_capture/c;

    const/4 v5, 0x2

    invoke-direct {v4, v5, p4}, Lcom/sec/android/app/sbrowser/object_capture/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v2, v2, Lorg/chromium/content_public/browser/SelectionMenuItem;->intent:Landroid/content/Intent;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static synthetic b(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->lambda$onPrepareActionMode$3(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->lambda$getMagnifierAnimator$5()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private childLocalSurfaceIdChanged()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mMagnifierAnimator:Lorg/chromium/content/browser/selection/MagnifierAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->childLocalSurfaceIdChanged()V

    :cond_0
    return-void
.end method

.method private static createJavaRect(IIII)Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static bridge synthetic d(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private destroyDropdownMenu()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mDropdownMenuDelegate:Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;->dismiss()V

    :cond_0
    return-void
.end method

.method private dropFocus()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyActionModeAndUnselect()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->dismissTextHandles()V

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/PopupController;->hideAll(Lorg/chromium/content_public/browser/WebContents;)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->clearSelection()V

    return-void
.end method

.method public static bridge synthetic e(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectedText:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)I
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectionOffset:I

    return p0
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;
    .locals 2

    const-class v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-static {}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    return-object p0
.end method

.method public static fromWebContentsNoCreate(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;
    .locals 2

    const-class v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mRepeatingHideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private getActionType(II)I
    .locals 0

    const p0, 0x1020041

    if-eq p2, p0, :cond_7

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    sget p0, Lorg/chromium/content/R$id;->select_action_menu_select_all:I

    if-ne p1, p0, :cond_1

    const/16 p0, 0xc8

    return p0

    :cond_1
    sget p0, Lorg/chromium/content/R$id;->select_action_menu_cut:I

    if-ne p1, p0, :cond_2

    const/16 p0, 0x67

    return p0

    :cond_2
    sget p0, Lorg/chromium/content/R$id;->select_action_menu_copy:I

    if-ne p1, p0, :cond_3

    const/16 p0, 0x65

    return p0

    :cond_3
    sget p0, Lorg/chromium/content/R$id;->select_action_menu_paste:I

    if-eq p1, p0, :cond_6

    sget p0, Lorg/chromium/content/R$id;->select_action_menu_paste_as_plain_text:I

    if-ne p1, p0, :cond_4

    goto :goto_0

    :cond_4
    sget p0, Lorg/chromium/content/R$id;->select_action_menu_share:I

    if-ne p1, p0, :cond_5

    const/16 p0, 0x68

    return p0

    :cond_5
    const/16 p0, 0x6c

    return p0

    :cond_6
    :goto_0
    const/16 p0, 0x66

    return p0

    :cond_7
    :goto_1
    const/16 p0, 0x69

    return p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getDefaultHideDuration()J
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDefaultActionModeHideDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDeviceScaleFactor()F
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getDeviceScaleFactor()F

    move-result p0

    return p0
.end method

.method private getDropdownItemClickListener(Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;)Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate$ItemClickListener;
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method

.method private getDropdownItems()Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-direct {v1}, Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;-><init>()V

    iget-object v2, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mDropdownMenuDelegate:Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMenuItems()Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/content_public/browser/SelectionMenuGroup;

    iget-object v6, v5, Lorg/chromium/content_public/browser/SelectionMenuGroup;->items:Ljava/util/SortedSet;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/content_public/browser/SelectionMenuItem;

    iget-boolean v8, v7, Lorg/chromium/content_public/browser/SelectionMenuItem;->isEnabled:Z

    if-eqz v8, :cond_1

    iget-object v8, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lorg/chromium/content_public/browser/SelectionMenuItem;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_0

    :cond_2
    if-lez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iget-object v6, v5, Lorg/chromium/content_public/browser/SelectionMenuGroup;->items:Ljava/util/SortedSet;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/chromium/content_public/browser/SelectionMenuItem;

    iget-boolean v11, v10, Lorg/chromium/content_public/browser/SelectionMenuItem;->isEnabled:Z

    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v21, v8, 0x1

    if-nez v8, :cond_5

    if-eqz v9, :cond_5

    iget-object v8, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mDropdownMenuDelegate:Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;

    invoke-interface {v8}, Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;->getDivider()Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/chromium/ui/modelutil/ListModelBase;->add(Ljava/lang/Object;)V

    :cond_5
    iget-object v8, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Lorg/chromium/content_public/browser/SelectionMenuItem;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v11, v10, Lorg/chromium/content_public/browser/SelectionMenuItem;->contentDescription:Ljava/lang/CharSequence;

    iget-object v12, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mDropdownMenuDelegate:Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;

    const/4 v13, 0x0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_6
    move-object v8, v13

    :goto_4
    if-eqz v11, :cond_7

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    :cond_7
    iget v14, v5, Lorg/chromium/content_public/browser/SelectionMenuGroup;->id:I

    iget v15, v10, Lorg/chromium/content_public/browser/SelectionMenuItem;->id:I

    iget-object v11, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lorg/chromium/content_public/browser/SelectionMenuItem;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    iget-boolean v11, v10, Lorg/chromium/content_public/browser/SelectionMenuItem;->isIconTintable:Z

    iget-object v3, v10, Lorg/chromium/content_public/browser/SelectionMenuItem;->clickListener:Landroid/view/View$OnClickListener;

    iget-object v10, v10, Lorg/chromium/content_public/browser/SelectionMenuItem;->intent:Landroid/content/Intent;

    const/16 v18, 0x1

    move-object/from16 v20, v10

    move-object v10, v12

    move/from16 v17, v11

    move-object v11, v8

    move-object v12, v13

    move v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v7

    move-object/from16 v19, v3

    invoke-interface/range {v10 .. v20}, Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;->getMenuItem(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/drawable/Drawable;ZZZLandroid/view/View$OnClickListener;Landroid/content/Intent;)Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/chromium/ui/modelutil/ListModelBase;->add(Ljava/lang/Object;)V

    move/from16 v8, v21

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method

.method private getMagnifierAnimator()Lorg/chromium/content/browser/selection/MagnifierAnimator;
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mMagnifierAnimator:Lorg/chromium/content/browser/selection/MagnifierAnimator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-boolean v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->sDisableMagnifierForTesting:Z

    if-nez v0, :cond_2

    new-instance v0, Lorg/chromium/content/browser/selection/a;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/selection/a;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V

    invoke-static {}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isMagnifierWithSurfaceControlSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-direct {v1, v2, v0}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControl;-><init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/chromium/content/browser/selection/MagnifierWrapperImpl;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/selection/MagnifierWrapperImpl;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$ReadbackViewCallback;)V

    :goto_0
    new-instance v0, Lorg/chromium/content/browser/selection/MagnifierAnimator;

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/selection/MagnifierAnimator;-><init>(Lorg/chromium/content/browser/selection/MagnifierWrapper;)V

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mMagnifierAnimator:Lorg/chromium/content/browser/selection/MagnifierAnimator;

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPopupController()Lorg/chromium/content/browser/PopupController;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mPopupController:Lorg/chromium/content/browser/PopupController;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/PopupController;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/PopupController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mPopupController:Lorg/chromium/content/browser/PopupController;

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mPopupController:Lorg/chromium/content/browser/PopupController;

    return-object p0
.end method

.method private getScaledRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 3

    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static bridge synthetic h(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSmartSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    return-object p0
.end method

.method private handleMenuItemClick(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    sget v0, Lorg/chromium/content/R$id;->select_action_menu_select_all:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->selectAll()V

    goto :goto_0

    :cond_0
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_cut:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->cut()V

    goto :goto_0

    :cond_1
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_copy:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->copy()V

    goto :goto_0

    :cond_2
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_paste:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->paste()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isPasteActionModeValid()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->dismissTextHandles()V

    goto :goto_0

    :cond_3
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_paste_as_plain_text:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->pasteAsPlainText()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isPasteActionModeValid()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->dismissTextHandles()V

    goto :goto_0

    :cond_4
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_share:I

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->share()V

    goto :goto_0

    :cond_5
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_web_search:I

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->search()V

    :cond_6
    :goto_0
    return-void
.end method

.method private hideActionModeTemporarily(J)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0, p1, p2}, Landroid/view/ActionMode;->hide(J)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic i(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)J
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getDefaultHideDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public static initializeActionMenu(Landroid/content/Context;Ljava/util/SortedSet;Landroid/view/Menu;Ljava/util/Map;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/SortedSet<",
            "Lorg/chromium/content_public/browser/SelectionMenuGroup;",
            ">;",
            "Landroid/view/Menu;",
            "Ljava/util/Map<",
            "Landroid/view/MenuItem;",
            "Landroid/view/View$OnClickListener;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/SelectionMenuGroup;

    invoke-static {p0, v0, p2, p3, p4}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->addMenuItemsToActionMenu(Landroid/content/Context;Lorg/chromium/content_public/browser/SelectionMenuGroup;Landroid/view/Menu;Ljava/util/Map;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isMagnifierWithSurfaceControlSupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->sAllowSurfaceControlMagnifier:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImplJni;->get()Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;->isMagnifierWithSurfaceControlSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isShareAvailable()Z
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000

    invoke-static {p0, v0}, Lorg/chromium/base/PackageManagerUtils;->canResolveActivity(Landroid/content/Intent;I)Z

    move-result p0

    return p0
.end method

.method private isWindowOnTablet()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->sEnableTabletUiModeForTesting:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isWindowOnTablet(Lorg/chromium/ui/base/WindowAndroid;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(JLorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V
    .locals 0

    invoke-direct {p2, p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hideActionModeTemporarily(J)V

    return-void
.end method

.method public static bridge synthetic k(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showSelectionMenuInternal()V

    return-void
.end method

.method private static synthetic lambda$addMenuItemsToActionMenu$4(Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/view/MenuItem;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getMagnifierAnimator$5()Landroid/view/View;
    .locals 1

    sget-boolean v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->sShouldGetReadbackViewFromWindowAndroid:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getReadbackView()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$onPrepareActionMode$3(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->logSelectionAction(II)V

    const/4 p0, 0x0

    return p0
.end method

.method private logSelectionAction(II)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSmartSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectedText:Ljava/lang/String;

    iget v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectionOffset:I

    invoke-direct {p0, p2, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getActionType(II)I

    move-result p1

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    invoke-virtual {v0, v1, v2, p1, p0}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->onSelectionAction(Ljava/lang/String;IILorg/chromium/content_public/browser/SelectionClient$Result;)V

    :cond_0
    return-void
.end method

.method private nativeSelectionPopupControllerDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mNativeSelectionPopupController:J

    return-void
.end method

.method private onSelectAroundCaretFailure()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionClient:Lorg/chromium/content_public/browser/SelectionClient;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/chromium/content_public/browser/SelectionClient;->selectAroundCaretAck(Lorg/chromium/content_public/browser/SelectAroundCaretResult;)V

    :cond_0
    return-void
.end method

.method private onSelectAroundCaretSuccess(IIII)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionClient:Lorg/chromium/content_public/browser/SelectionClient;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/content_public/browser/SelectAroundCaretResult;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/chromium/content_public/browser/SelectAroundCaretResult;-><init>(IIII)V

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionClient:Lorg/chromium/content_public/browser/SelectionClient;

    invoke-interface {p0, v0}, Lorg/chromium/content_public/browser/SelectionClient;->selectAroundCaretAck(Lorg/chromium/content_public/browser/SelectAroundCaretResult;)V

    :cond_0
    return-void
.end method

.method private renderWidgetHostViewChanged()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMagnifierAnimator()Lorg/chromium/content/browser/selection/MagnifierAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMagnifierAnimator()Lorg/chromium/content/browser/selection/MagnifierAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->handleDragStopped()V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->dropFocus()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method

.method public static sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Truncating oversized query ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectionPopupCtlr"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u2026"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private setHasSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHasSelection:Z

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsActionBarShowingSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectActionBarShowing()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setShouldGetReadbackViewFromWindowAndroid()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->sShouldGetReadbackViewFromWindowAndroid:Z

    return-void
.end method

.method private setSystemGestureExclusionRects(Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private setTextHandlesHiddenForDropdownMenu(Z)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mNativeSelectionPopupController:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImplJni;->get()Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mNativeSelectionPopupController:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;->setTextHandlesHiddenForDropdownMenu(JLorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Z)V

    return-void
.end method

.method private shouldUseDropdownMenu()Z
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mDropdownMenuDelegate:Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mMenuSourceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isWindowOnTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private showContextMenuAtTouchHandle(II)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderWidgetHostView()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderWidgetHostView()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->showContextMenuAtTouchHandle(II)V

    :cond_0
    return-void
.end method

.method private showSelectionMenuInternal()V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMenuType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->createAndShowDropdownMenu()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showActionModeOrClearOnFailure()V

    :goto_0
    return-void
.end method


# virtual methods
.method public canCopy()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectionPassword()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lorg/chromium/ui/base/Clipboard;->getInstance()Lorg/chromium/ui/base/Clipboard;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/base/Clipboard;->canCopy()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canCut()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectionPassword()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lorg/chromium/ui/base/Clipboard;->getInstance()Lorg/chromium/ui/base/Clipboard;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/base/Clipboard;->canCopy()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canPaste()Z
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/chromium/ui/base/Clipboard;->getInstance()Lorg/chromium/ui/base/Clipboard;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/base/Clipboard;->canPaste()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canPasteAsPlainText()Z
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->canPaste()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCanEditRichly:Z

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lorg/chromium/ui/base/Clipboard;->getInstance()Lorg/chromium/ui/base/Clipboard;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/base/Clipboard;->hasHTMLOrStyledText()Z

    move-result p0

    return p0
.end method

.method public canSelectAll()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCanSelectAll:Z

    return p0
.end method

.method public canShare()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectActionModeAllowed(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canWebSearch()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectActionModeAllowed(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearSelection()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->collapseSelection()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setHasSelection(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public copy()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->copy()V

    return-void
.end method

.method public createAndShowDropdownMenu()V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMenuType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyActionModeAndKeepSelection()V

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyDropdownMenu()V

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setTextHandlesHiddenForDropdownMenu(Z)V

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getDeviceScaleFactor()F

    move-result v0

    iget v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mXDip:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v7, v1

    iget v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mYDip:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v8, v0

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getDropdownItems()Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    move-result-object v5

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mDropdownMenuDelegate:Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getDropdownItemClickListener(Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;)Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate$ItemClickListener;

    move-result-object v6

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mDropdownMenuDelegate:Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;

    iget-object v3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    invoke-interface/range {v2 .. v8}, Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate;->show(Landroid/content/Context;Landroid/view/View;Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate$ItemClickListener;II)V

    return-void
.end method

.method public cut()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->cut()V

    return-void
.end method

.method public destroyActionModeAndKeepSelection()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mUnselectAllOnDismiss:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->finishActionMode()V

    return-void
.end method

.method public destroyActionModeAndUnselect()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mUnselectAllOnDismiss:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->finishActionMode()V

    return-void
.end method

.method public destroySelectActionMode()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->finishActionMode()V

    return-void
.end method

.method public dismissTextHandles()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderWidgetHostView()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderWidgetHostView()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->dismissTextHandles()V

    :cond_0
    return-void
.end method

.method public finishActionMode()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHidden:Z

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mRepeatingHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setActionMode(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public getActionModeCallbackHelper()Lorg/chromium/content_public/browser/ActionModeCallbackHelper;
    .locals 0

    return-object p0
.end method

.method public getMenuItems()Ljava/util/SortedSet;
    .locals 13
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lorg/chromium/content_public/browser/SelectionMenuGroup;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectActionModeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/selection/a;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/selection/a;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionMenuCachedResult:Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectionPassword()Z

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionActionMenuDelegate:Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->canReuseResult(Lorg/chromium/content_public/browser/SelectionClient$Result;ZZLjava/lang/String;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;

    iget-object v9, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectionPassword()Z

    move-result v10

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v1

    xor-int/lit8 v11, v1, 0x1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v12

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectionPassword()Z

    move-result v4

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionActionMenuDelegate:Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->getMenuItems(Lorg/chromium/content/browser/selection/SelectActionMenuHelper$SelectActionMenuDelegate;Landroid/content/Context;Lorg/chromium/content_public/browser/SelectionClient$Result;ZZLjava/lang/String;Lorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;Lorg/chromium/content_public/browser/selection/SelectionActionMenuDelegate;)Ljava/util/SortedSet;

    move-result-object v6

    move-object v1, v0

    move-object v2, v9

    move v3, v10

    move v4, v11

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;-><init>(Lorg/chromium/content_public/browser/SelectionClient$Result;ZZLjava/lang/String;Ljava/util/SortedSet;)V

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionMenuCachedResult:Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;

    :cond_2
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionMenuCachedResult:Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionMenuCachedResult;->getResult()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public getMenuType()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->shouldUseDropdownMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPreserveSelectionOnNextLossOfFocus()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mPreserveSelectionOnNextLossOfFocus:Z

    return p0
.end method

.method public getResultCallback()Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mResultCallback:Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;

    return-object p0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectedText:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectionClient()Lorg/chromium/content_public/browser/SelectionClient;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionClient:Lorg/chromium/content_public/browser/SelectionClient;

    return-object p0
.end method

.method public getSelectionRectRelativeToContainingView()Landroid/graphics/Rect;
    .locals 6

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getDeviceScaleFactor()F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result p0

    float-to-int p0, p0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v1
.end method

.method public getTouchHandleRects()[Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mNativeSelectionPopupController:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImplJni;->get()Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mNativeSelectionPopupController:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;->getTouchHandleRects(JLorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public handleTextReplacementAction(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mUnselectAllOnDismiss:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->replace(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public hasSelection()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHasSelection:Z

    return p0
.end method

.method public hide()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroySelectActionMode()V

    return-void
.end method

.method public hideActionMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFloatingActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHidden:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHidden:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mRepeatingHideRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mRepeatingHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hideActionModeTemporarily(J)V

    :goto_0
    return-void
.end method

.method public hidePopupsAndPreserveSelection()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyActionModeAndKeepSelection()V

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getPopupController()Lorg/chromium/content/browser/PopupController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupController;->hideAllPopups()V

    return-void
.end method

.method public invalidateContentRect()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/view/ActionMode;->invalidateContentRect()V

    :cond_0
    return-void
.end method

.method public isActionModeSupported()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCallback:Lorg/chromium/content_public/browser/ActionModeCallback;

    sget-object v0, Lorg/chromium/content_public/browser/ActionModeCallbackHelper;->EMPTY_CALLBACK:Lorg/chromium/content_public/browser/ActionModeCallbackHelper$EmptyActionCallback;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isActionModeValid()Z
    .locals 0
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNullIf;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFloatingActionMode()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/view/ActionMode;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFocusedNodeEditable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mEditable:Z

    return p0
.end method

.method public isIncognito()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isIncognito()Z

    move-result p0

    return p0
.end method

.method public isPasteActionModeValid()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectActionBarShowing()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectActionModeAllowed(I)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mAllowedMenuItems:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isShareAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public isSelectionPassword()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsPasswordType:Z

    return p0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCustomActionMenuItemClickListeners:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    invoke-interface {p2, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isPasteActionModeValid()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->handleMenuItemClick(I)V

    :cond_2
    :goto_0
    sget p0, Lorg/chromium/content/R$id;->select_action_menu_select_all:I

    if-eq v0, p0, :cond_3

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_3
    return v1
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1

    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/chromium/ui/base/DeviceFormFactor;->isWindowOnTablet(Lorg/chromium/ui/base/WindowAndroid;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    sget p2, Lorg/chromium/content/R$string;->actionbar_textselection_title:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDestroyActionMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setActionMode(Landroid/view/ActionMode;)V

    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mUnselectAllOnDismiss:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->clearSelection()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onDragUpdate(IFF)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMagnifierAnimator()Lorg/chromium/content/browser/selection/MagnifierAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getDeviceScaleFactor()F

    move-result p1

    mul-float/2addr p2, p1

    mul-float/2addr p3, p1

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result p1

    add-float/2addr p1, p3

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMagnifierAnimator()Lorg/chromium/content/browser/selection/MagnifierAnimator;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->handleDragStartedOrMoved(FF)V

    :cond_0
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectionRectRelativeToContainingView()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLinkToTextHighlightGenerated(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public onNodeAttributeUpdated(ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->updateSelectionState(ZZ)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMenuItems()Ljava/util/SortedSet;

    move-result-object p1

    invoke-static {p2}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->removeAllAddedGroupsFromMenu(Landroid/view/Menu;)V

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCustomActionMenuItemClickListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCustomActionMenuItemClickListeners:Ljava/util/Map;

    new-instance v2, Lcom/sec/android/app/sbrowser/object_capture/c;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/object_capture/c;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, p1, p2, v1, v2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->initializeActionMenu(Landroid/content/Context;Ljava/util/SortedSet;Landroid/view/Menu;Ljava/util/Map;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRotationChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hidePopupsAndPreserveSelection()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showActionModeOrClearOnFailure()V

    :cond_0
    return-void
.end method

.method public onSelectionChanged(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsProcessingSelectAll:Z

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSmartSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectedText:Ljava/lang/String;

    iget v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectionOffset:I

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->onSelectionAction(Ljava/lang/String;IILorg/chromium/content_public/browser/SelectionClient$Result;)V

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyActionModeAndKeepSelection()V

    :cond_2
    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectedText:Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionClient:Lorg/chromium/content_public/browser/SelectionClient;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/SelectionClient;->onSelectionChanged(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsProcessingSelectAll:Z

    return-void
.end method

.method public onSelectionEvent(IIIII)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-ne p2, p4, :cond_0

    add-int/lit8 p4, p4, 0x1

    :cond_0
    if-ne p3, p5, :cond_1

    add-int/lit8 p5, p5, 0x1

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWasPastePopupShowingOnInsertionDragStart:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p3, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showContextMenuAtTouchHandle(II)V

    :cond_2
    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWasPastePopupShowingOnInsertionDragStart:Z

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMagnifierAnimator()Lorg/chromium/content/browser/selection/MagnifierAnimator;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMagnifierAnimator()Lorg/chromium/content/browser/selection/MagnifierAnimator;

    move-result-object p2

    invoke-virtual {p2}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->handleDragStopped()V

    :cond_3
    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsInHandleDragging:Z

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isPasteActionModeValid()Z

    move-result p2

    iput-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWasPastePopupShowingOnInsertionDragStart:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hidePopupsAndPreserveSelection()V

    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsInHandleDragging:Z

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isPasteActionModeValid()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroySelectActionMode()V

    :cond_4
    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsInsertionForTesting:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_2

    :pswitch_3
    iget-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWasPastePopupShowingOnInsertionDragStart:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroySelectActionMode()V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p3, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showContextMenuAtTouchHandle(II)V

    :goto_0
    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWasPastePopupShowingOnInsertionDragStart:Z

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p2}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object p2

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/content/browser/GestureListenerManagerImpl;

    invoke-virtual {p2}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->isScrollInProgress()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isPasteActionModeValid()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showActionModeOrClearOnFailure()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroySelectActionMode()V

    :goto_1
    iget-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsInHandleDragging:Z

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->performHapticFeedback()V

    goto/16 :goto_2

    :pswitch_5
    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsInsertionForTesting:Z

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, p2, p5}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showContextMenuAtTouchHandle(II)V

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMagnifierAnimator()Lorg/chromium/content/browser/selection/MagnifierAnimator;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMagnifierAnimator()Lorg/chromium/content/browser/selection/MagnifierAnimator;

    move-result-object p2

    invoke-virtual {p2}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->handleDragStopped()V

    :cond_7
    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsInHandleDragging:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setSystemGestureExclusionRectsInternal()V

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hideActionMode(Z)V

    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsInHandleDragging:Z

    goto :goto_2

    :pswitch_8
    iput v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectionOffset:I

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setHasSelection(Z)V

    iput-boolean v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mUnselectAllOnDismiss:Z

    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionClient:Lorg/chromium/content_public/browser/SelectionClient;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Lorg/chromium/content_public/browser/SelectionClient;->cancelAllRequests()V

    :cond_8
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->finishActionMode()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_2

    :pswitch_9
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->invalidateContentRect()V

    iget-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsInHandleDragging:Z

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->performHapticFeedback()V

    goto :goto_2

    :pswitch_a
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_9
    :goto_2
    :pswitch_b
    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionClient:Lorg/chromium/content_public/browser/SelectionClient;

    if-eqz p2, :cond_a

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getDeviceScaleFactor()F

    move-result p2

    iget-object p3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    float-to-int p4, p4

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    float-to-int p2, p3

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionClient:Lorg/chromium/content_public/browser/SelectionClient;

    int-to-float p3, p4

    int-to-float p2, p2

    invoke-interface {p0, p1, p3, p2}, Lorg/chromium/content_public/browser/SelectionClient;->onSelectionEvent(IFF)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public onViewFocusChanged(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->restoreSelectionPopupsIfNecessary()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getPreserveSelectionOnNextLossOfFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setPreserveSelectionOnNextLossOfFocus(Z)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hidePopupsAndPreserveSelection()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->dropFocus()V

    :goto_0
    return-void
.end method

.method public onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->reset()V

    return-void

    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mMagnifierAnimator:Lorg/chromium/content/browser/selection/MagnifierAnimator;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroySelectActionMode()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public paste()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->paste()V

    return-void
.end method

.method public pasteAsPlainText()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->pasteAsPlainText()V

    return-void
.end method

.method public performHapticFeedback()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method public processText(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MobileActionMode.ProcessTextIntent"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const v1, 0x186a0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v1, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$2;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$2;-><init>(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public restoreSelectionPopupsIfNecessary()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMenuType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showActionModeOrClearOnFailure()V

    :cond_0
    return-void
.end method

.method public search()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MobileActionMode.WebSearch"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "new_search"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.browser.application_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public selectAll()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsProcessingSelectAll:Z

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->selectAll()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "MobileActionMode.SelectAllWasEditable"

    invoke-static {p0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "MobileActionMode.SelectAllWasNonEditable"

    invoke-static {p0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setActionMode(Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mActionMode:Landroid/view/ActionMode;

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsActionBarShowingSupplier:Lorg/chromium/base/supplier/ObservableSupplierImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectActionBarShowing()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setActionModeCallback(Lorg/chromium/content_public/browser/ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCallback:Lorg/chromium/content_public/browser/ActionModeCallback;

    return-void
.end method

.method public setMagnifierAnimator(Lorg/chromium/content/browser/selection/MagnifierAnimator;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mMagnifierAnimator:Lorg/chromium/content/browser/selection/MagnifierAnimator;

    return-void
.end method

.method public setPreserveSelectionOnNextLossOfFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mPreserveSelectionOnNextLossOfFocus:Z

    return-void
.end method

.method public setScrollInProgress(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hideActionMode(Z)V

    return-void
.end method

.method public setSelectionClient(Lorg/chromium/content_public/browser/SelectionClient;)V
    .locals 1

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionClient:Lorg/chromium/content_public/browser/SelectionClient;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/chromium/content_public/browser/SelectionClient;->getSelectionEventProcessor()Lorg/chromium/content_public/browser/SelectionEventProcessor;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    :goto_0
    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSmartSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    return-void
.end method

.method public setSystemGestureExclusionRectsInternal()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getTouchHandleRects()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v2, v0, v1

    check-cast v2, Landroid/graphics/Rect;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    check-cast v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getDeviceScaleFactor()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getScaledRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v4}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, v0, v3}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getScaledRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public setTextHandlesTemporarilyHidden(Z)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mNativeSelectionPopupController:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImplJni;->get()Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mNativeSelectionPopupController:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;->setTextHandlesTemporarilyHidden(JLorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Z)V

    return-void
.end method

.method public share()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MobileActionMode.Share"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const v1, 0x186a0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v2, Lorg/chromium/content/R$string;->actionbar_share:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public showActionModeOrClearOnFailure()V
    .locals 4

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getMenuType()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFloatingActionMode()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SelectionPopupCtlr"

    const-string v3, "Ignoring NPE from ActionMode.invalidate() as workaround for L"

    invoke-static {v2, v3, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hideActionMode(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyDropdownMenu()V

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setTextHandlesHiddenForDropdownMenu(Z)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyActionModeAndKeepSelection()V

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCallback:Lorg/chromium/content_public/browser/ActionModeCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->runIfNecessary(Landroid/content/Context;Landroid/view/ActionMode;)V

    :cond_2
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setActionMode(Landroid/view/ActionMode;)V

    iput-boolean v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mUnselectAllOnDismiss:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->clearSelection()V

    :cond_3
    :goto_1
    return-void
.end method

.method public showSelectionMenu(IIIIIIIZZLjava/lang/String;IZZZILorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    move/from16 v1, p8

    move/from16 v2, p15

    const-string v3, "Android.ShowSelectionMenuSourceType"

    const/16 v4, 0xb

    invoke-static {v3, v2, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    add-int v3, p6, p7

    move v4, p1

    iput v4, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mXDip:I

    move v4, p2

    iput v4, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mYDip:I

    iget-object v4, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual {v4, p3, p4, p5, v3}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v1, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mEditable:Z

    move-object/from16 v3, p10

    iput-object v3, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectedText:Ljava/lang/String;

    move/from16 v4, p11

    iput v4, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectionOffset:I

    move/from16 v4, p12

    iput-boolean v4, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCanSelectAll:Z

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-direct {p0, v3}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setHasSelection(Z)V

    move/from16 v3, p9

    iput-boolean v3, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsPasswordType:Z

    move/from16 v3, p13

    iput-boolean v3, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCanEditRichly:Z

    iput v2, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mMenuSourceType:I

    iput-boolean v4, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mUnselectAllOnDismiss:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v3, p16

    iput-object v3, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    iget-object v3, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSmartSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    const/16 v4, 0x9

    if-eqz v3, :cond_2

    const/4 v5, 0x7

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    const/16 v5, 0xa

    if-eq v2, v5, :cond_0

    iget-object v5, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectedText:Ljava/lang/String;

    iget v6, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectionOffset:I

    invoke-virtual {v3, v5, v6, v1}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->onSelectionStarted(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectedText:Ljava/lang/String;

    iget v5, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectionOffset:I

    const/16 v6, 0xc9

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v5, v6, v7}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->onSelectionAction(Ljava/lang/String;IILorg/chromium/content_public/browser/SelectionClient$Result;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectedText:Ljava/lang/String;

    iget v5, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mLastSelectionOffset:I

    iget-object v6, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    invoke-virtual {v3, v1, v5, v6}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->onSelectionModified(Ljava/lang/String;ILorg/chromium/content_public/browser/SelectionClient$Result;)V

    :cond_2
    :goto_0
    if-ne v2, v4, :cond_3

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showSelectionMenuInternal()V

    return-void

    :cond_3
    iget-object v1, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionClient:Lorg/chromium/content_public/browser/SelectionClient;

    if-eqz v1, :cond_4

    move/from16 v3, p14

    invoke-interface {v1, v3}, Lorg/chromium/content_public/browser/SelectionClient;->requestSelectionPopupUpdates(Z)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    const/4 v1, 0x5

    if-eq v2, v1, :cond_6

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showSelectionMenuInternal()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showSelectionMenuInternal()V

    :cond_6
    :goto_1
    return-void
.end method

.method public updateSelectionState(ZZ)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isPasteActionModeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroySelectActionMode()V

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectionPassword()Z

    move-result v0

    if-eq p2, v0, :cond_2

    :cond_1
    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mEditable:Z

    iput-boolean p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsPasswordType:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void
.end method
