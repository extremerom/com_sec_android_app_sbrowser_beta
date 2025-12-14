.class public Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$RuntimeFlagsIdx;
    }
.end annotation


# instance fields
.field private mBridge:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsSplitMode:Z

.field private final mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private final mSplitModeFalseRunnable:Ljava/lang/Runnable;

.field private mTransBarDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

.field private mTransBarListener:Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;

.field private mTranslateBarCallback:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mIsSplitMode:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mSplitModeFalseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mTransBarDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$3;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mTransBarListener:Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$4;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mTranslateBarCallback:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mBridge:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mIsSplitMode:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mSplitModeFalseRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mTransBarDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mIsSplitMode:Z

    return-void
.end method


# virtual methods
.method public getTransBarDelegate()Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mTransBarDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    return-object p0
.end method

.method public getTransBarListener()Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mTransBarListener:Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;

    return-object p0
.end method

.method public isTranslateV2()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslateV2()Z

    move-result p0

    return p0
.end method

.method public onNativeInitializationSuccess()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->isTranslateV2()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mTranslateBarCallback:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;-><init>(Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mBridge:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->addTransClient(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->removeTransClient(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;)V

    :goto_0
    return-void
.end method

.method public runPageChangeLang(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mBridge:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->onSourceLanguageChanged(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->onTargetLanguageChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public runPageClearTranslate()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mBridge:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->clearToOriginal(I)V

    :cond_0
    return-void
.end method

.method public runPageExitTrans()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mBridge:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->onClosed(IZ)V

    :cond_0
    return-void
.end method

.method public runPageOnTrans(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mBridge:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->onTranslate(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->onShowOriginal(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public runPageSplitMode(Z)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mBridge:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getLeftTabId()I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getRightTabId()I

    move-result v0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    if-eq v0, v1, :cond_0

    invoke-static {p1, p0, v0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->onSplitViewChanged(ZII)V

    :cond_0
    return-void
.end method

.method public runPageTrans()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->mBridge:Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->startTranslate(I)V

    :cond_0
    return-void
.end method
