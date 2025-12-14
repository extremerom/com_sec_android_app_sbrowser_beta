.class public Lorg/chromium/content/browser/input/SelectPopup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/PopupController$HideablePopup;
.implements Lorg/chromium/ui/base/ViewAndroidDelegate$ContainerViewObserver;
.implements Lorg/chromium/content/browser/WindowEventObserver;
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/SelectPopup$UserDataFactoryLazyHolder;,
        Lorg/chromium/content/browser/input/SelectPopup$Ui;,
        Lorg/chromium/content/browser/input/SelectPopup$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mContainerView:Landroid/view/View;

.field protected mNativeSelectPopup:J

.field protected mNativeSelectPopupSourceFrame:J

.field protected mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

.field protected final mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopup;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/input/SelectPopup;->mContainerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->addObserver(Lorg/chromium/ui/base/ViewAndroidDelegate$ContainerViewObserver;)V

    invoke-static {p1, p0}, Lorg/chromium/content/browser/PopupController;->register(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/PopupController$HideablePopup;)V

    invoke-static {p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    :cond_0
    return-void
.end method

.method private static create(Lorg/chromium/content_public/browser/WebContents;J)Lorg/chromium/content/browser/input/SelectPopup;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Lorg/chromium/content/browser/input/SelectPopup;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/SelectPopup;

    move-result-object p0

    iput-wide p1, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopup:J

    return-object p0
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/SelectPopup;
    .locals 2

    const-class v0, Lorg/chromium/content/browser/input/SelectPopup;

    invoke-static {}, Lorg/chromium/content/browser/input/SelectPopup$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/input/SelectPopup;

    return-object p0
.end method

.method private onNativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopup:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    return-void
.end method

.method public hide()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/chromium/content/browser/input/SelectPopup$Ui;->hide(Z)V

    :cond_0
    return-void
.end method

.method public hideWithoutCancel()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/input/SelectPopup$Ui;->hide(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    return-void
.end method

.method public onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectPopup;->close()V

    return-void
.end method

.method public selectMenuItems([I)V
    .locals 11

    iget-wide v0, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopup:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/input/SelectPopupJni;->get()Lorg/chromium/content/browser/input/SelectPopup$Natives;

    move-result-object v4

    iget-wide v5, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopup:J

    iget-wide v8, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    move-object v7, p0

    move-object v10, p1

    invoke-interface/range {v4 .. v10}, Lorg/chromium/content/browser/input/SelectPopup$Natives;->selectMenuItems(JLorg/chromium/content/browser/input/SelectPopup;J[I)V

    :cond_0
    iput-wide v2, p0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    return-void
.end method

.method public show(Landroid/view/View;J[Ljava/lang/String;[IZ[IZI)V
    .locals 13
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    move-wide v1, p2

    move-object/from16 v3, p4

    iget-object v4, v0, Lorg/chromium/content/browser/input/SelectPopup;->mContainerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lorg/chromium/content/browser/input/SelectPopup;->mContainerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v4, v0, Lorg/chromium/content/browser/input/SelectPopup;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v4}, Lorg/chromium/content/browser/PopupController;->hidePopupsAndClearSelection(Lorg/chromium/content_public/browser/WebContents;)V

    iget-object v4, v0, Lorg/chromium/content/browser/input/SelectPopup;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v4}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_2

    new-instance v7, Lorg/chromium/content/browser/input/SelectPopupItem;

    aget-object v8, v3, v5

    aget v9, p5, v5

    invoke-direct {v7, v8, v9}, Lorg/chromium/content/browser/input/SelectPopupItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p6, :cond_3

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lorg/chromium/content/browser/input/SelectPopupDropdown;

    new-instance v7, Lcom/sec/terrace/a;

    const/4 v5, 0x3

    invoke-direct {v7, v5, p0}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    iget-object v12, v0, Lorg/chromium/content/browser/input/SelectPopup;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    move-object v5, v3

    move-object v8, p1

    move-object v9, v4

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v5 .. v12}, Lorg/chromium/content/browser/input/SelectPopupDropdown;-><init>(Landroid/content/Context;Lorg/chromium/base/Callback;Landroid/view/View;Ljava/util/List;[IZLorg/chromium/content_public/browser/WebContents;)V

    iput-object v3, v0, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    goto :goto_1

    :cond_3
    new-instance v3, Lorg/chromium/content/browser/input/SelectPopupDialog;

    new-instance v7, Lcom/sec/terrace/a;

    const/4 v5, 0x3

    invoke-direct {v7, v5, p0}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    move-object v5, v3

    move-object v8, v4

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Lorg/chromium/content/browser/input/SelectPopupDialog;-><init>(Landroid/content/Context;Lorg/chromium/base/Callback;Ljava/util/List;Z[I)V

    iput-object v3, v0, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    :goto_1
    iput-wide v1, v0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    iget-object v0, v0, Lorg/chromium/content/browser/input/SelectPopup;->mPopupView:Lorg/chromium/content/browser/input/SelectPopup$Ui;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/SelectPopup$Ui;->show()V

    return-void

    :cond_4
    :goto_2
    iput-wide v1, v0, Lorg/chromium/content/browser/input/SelectPopup;->mNativeSelectPopupSourceFrame:J

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/input/SelectPopup;->selectMenuItems([I)V

    return-void
.end method
