.class public abstract Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener$CountChangeNotifier;
.implements Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;


# instance fields
.field protected mAddOnsBadge:Landroid/view/View;

.field protected mAddOnsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBrowsingAssistAnimationShown:Z

.field protected mBrowsingAssistImage:Landroid/view/View;

.field private mInstanceId:I

.field protected mLastUpdatedUnreadNotificationCount:I

.field protected mLeftButtonKeyListener:Landroid/view/View$OnKeyListener;

.field protected mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

.field protected mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

.field protected mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

.field protected mMoreBadge:Landroid/view/View;

.field protected mMoreGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mNotificationBadge:Landroid/widget/TextView;

.field protected mNotificationButton:Landroid/widget/ImageButton;

.field protected mNotificationsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mRightButtonKeyListener:Landroid/view/View$OnKeyListener;

.field protected mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

.field protected mSettingsBadge:Landroid/view/View;

.field protected mSettingsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field protected mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

.field protected mTaskId:I

.field protected mToolbarColor:Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;

.field protected mToolbarCompact:Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;

.field protected mToolbarDefault:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;

.field protected mToolbarFocus:Lcom/sec/android/app/sbrowser/toolbar/ToolbarFocus;

.field protected mToolbarLeft:Landroid/widget/LinearLayout;

.field protected mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

.field protected mToolbarRight:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLastUpdatedUnreadNotificationCount:I

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonKeyListener:Landroid/view/View$OnKeyListener;

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTaskId:I

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-direct {p2, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-direct {p2, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTaskId:I

    invoke-direct {p2, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarColor:Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setRightButtonsManager(Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarColor:Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setLeftButtonsManager(Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->EMPTY:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    const-string p1, "[NotificationManager] toolbar registered to Notification count Listener"

    const-string p2, "si__ToolbarButtonLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mInstanceId:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mInstanceId:I

    const-string p1, "[NotificationManager] unable to get instance id activity null"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarDefault:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;

    new-instance p1, Lcom/sec/android/app/sbrowser/toolbar/ToolbarFocus;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarFocus;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarFocus:Lcom/sec/android/app/sbrowser/toolbar/ToolbarFocus;

    new-instance p1, Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarCompact:Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateCurrentMode()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->lambda$setClickListeners$3(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->lambda$setClickListeners$0(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->lambda$setClickListeners$2(ILandroid/view/View;)V

    return-void
.end method

.method private clearButtonLayoutListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mMoreBadge:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mMoreBadge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mMoreGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mSettingsBadge:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mSettingsBadge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mSettingsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mAddOnsBadge:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mAddOnsBadge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mAddOnsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    return-void
.end method

.method private createBadgeView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e08f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b0d89

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0
.end method

.method private createButton(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->createButtonImpl(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V

    const p1, 0x7f0b067b

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateNotificationBadge()V

    :cond_0
    invoke-virtual {p2, v1, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->addButton(Landroid/view/View;I)V

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {p2, v1, v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateButtonState(Landroid/view/View;ILcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    return-object v1
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->lambda$setClickListeners$1(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimationShown:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->forceCaptureIfNeeded(Landroid/view/View;)V

    return-void
.end method

.method private forceCaptureIfNeeded(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->forceCapture()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->hideBrowsingAssistAnimation()V

    return-void
.end method

.method private hideBrowsingAssistAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistImage:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setClickListeners$0(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onToolbarButtonClicked(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setClickListeners$1(ILandroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onToolbarButtonLongClicked(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setClickListeners$2(ILandroid/view/View;)V
    .locals 1

    const v0, 0x7f0b006b

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->showNightModeToastIfNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onToolbarButtonClicked(ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setClickListeners$3(ILandroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onToolbarButtonLongClicked(I)Z

    move-result p0

    return p0
.end method

.method private setButtonLayoutListener()V
    .locals 2

    const-string v0, "si__ToolbarButtonLayout"

    const-string v1, "setButtonLayoutListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b067b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getButton(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$4;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getButton(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$5;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mSettingsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mSettingsBadge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mSettingsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getButton(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$6;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mMoreGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mMoreBadge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mMoreGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getButton(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$7;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mAddOnsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mAddOnsBadge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mAddOnsGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    return-void
.end method

.method private setClickListeners(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0b067b

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/toolbar/x;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/y;

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/toolbar/y;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/toolbar/x;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/y;

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/toolbar/y;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showNightModeToastIfNeeded()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isNightModeToastNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isNightModeToastNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarUtil;->showNightModeToast(Landroid/content/Context;Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateAddOnsBadgeVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mAddOnsBadge:Landroid/view/View;

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getNewExtensionCount()I

    move-result v1

    const v2, 0x7f0b005d

    const v3, 0x7f141058

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateBadgeVisibility(Landroid/view/View;III)V

    return-void
.end method

.method private updateBadgeVisibility(Landroid/view/View;III)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getButton(I)Landroid/view/View;

    move-result-object p3

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f14105a

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateBrowsingAssistAnimationVisibility()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->isMoreMenuItem(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isBrowsingAssistAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimationShown:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistImage:Landroid/view/View;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sBrowsingAssistAnimationShown:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBrowsingAssistAnimationCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateBrowsingAssistBadgeVisibility: animationCount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBrowsingAssistAnimationCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ToolbarButtonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Intelligence_icon_dark.json"

    goto :goto_0

    :cond_1
    const-string v2, "Intelligence_icon_light.json"

    :goto_0
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "updateBrowsingAssistBadgeVisibility can\'t parse json"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    iget-object v1, v1, Lz3/t;->b:LL3/c;

    invoke-virtual {v1}, LL3/c;->removeAllListeners()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout$3;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;)V

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    iget-object v0, v0, Lz3/t;->b:LL3/c;

    invoke-virtual {v0, v1}, LL3/c;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateButtons(Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;Landroid/widget/LinearLayout;Landroid/view/View$OnKeyListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;",
            "Landroid/widget/LinearLayout;",
            "Landroid/view/View$OnKeyListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-direct {p0, v2, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->createButton(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->setClickListeners(Landroid/view/View;I)V

    invoke-virtual {v3, p4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "si__ToolbarButtonLayout"

    const-string p1, "Toolbar item list is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-nez p0, :cond_2

    const/16 v0, 0x8

    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateCurrentMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarCompact:Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarFocus:Lcom/sec/android/app/sbrowser/toolbar/ToolbarFocus;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarDefault:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDefault;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    if-eq v0, p0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->onModeFinished()V

    :cond_2
    return-void
.end method

.method private updateLeftButtons()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarLeftItems(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarLeft:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonKeyListener:Landroid/view/View$OnKeyListener;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateButtons(Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;Landroid/widget/LinearLayout;Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private updateNotificationBadge()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->shouldShowNotificationBadge(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f14083b

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLastUpdatedUnreadNotificationCount:I

    const-string v3, ", "

    const/4 v4, 0x0

    if-lez v0, :cond_1

    const/16 v1, 0x63

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f140823

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLastUpdatedUnreadNotificationCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f140824

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f14082d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isNotificationsVisited()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f14105b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f14105a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateRightButtons()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getToolbarRightItems(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarRight:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonKeyListener:Landroid/view/View$OnKeyListener;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateButtons(Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;Landroid/widget/LinearLayout;Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private updateSettingsBadgeVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mSettingsBadge:Landroid/view/View;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->getSettingsBadgeCount()I

    move-result v1

    const v2, 0x7f0b0073

    const v3, 0x7f140052

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateBadgeVisibility(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public applySecretModeStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->applySecretModeStatus(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->applySecretModeStatus(Z)V

    return-void
.end method

.method public cancelBrowsingAssistAnimationIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->hideBrowsingAssistAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    :cond_0
    return-void
.end method

.method public changeMode()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateCurrentMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarMode:Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->changeMode()V

    return-void
.end method

.method public clearToolbarButtons()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->clearButtonLayoutListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mMoreBadge:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mSettingsBadge:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mAddOnsBadge:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarLeft:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarRight:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_3
    return-void
.end method

.method public createButtonImpl(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v1, "createButtonImpl itemId: "

    const-string v2, "si__ToolbarButtonLayout"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0b067b

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e08f4

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0d78

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    const v1, 0x7f0b0d90

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateNotificationBadge()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_0
    const v1, 0x7f0b0078

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e08fa

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0d18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070243

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "te_IN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070246

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabsIcon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070244

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070242

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f0b0050

    if-ne v0, v1, :cond_4

    const-string v0, "createButtonImpl browsing_assist"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e08ef

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0d7b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistImage:Landroid/view/View;

    const v1, 0x7f0b0d7c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mBrowsingAssistAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f0b0073

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e08f6

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0d9c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mSettingsBadge:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const v1, 0x7f0b0069

    const v2, 0x7f0b0d92

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e08f3

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mMoreBadge:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f0b005d

    if-ne v0, v1, :cond_7

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->createBadgeView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mAddOnsBadge:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionIdFromMenuId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e08f1

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0d87

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e08f2

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f060230

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_9
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0715ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method public enableTabsHoverPopup(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[enableTabsHoverPopup] : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ToolbarButtonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getButton(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140296

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public enableToolbarButtons(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableToolbarButtons() enable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ToolbarButtonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getAllButtonsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getIdByButton(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateButtonState(Landroid/view/View;ILcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getIdByButton(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateButtonState(Landroid/view/View;ILcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->enableToolbarButtons(Z)V

    return-void
.end method

.method public focusInLeftFromLocationBar()V
    .locals 1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabBarShowingWithOneLine()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->focusInLeft()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getFirstEnabledButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutRight()V

    :goto_0
    return-void
.end method

.method public focusInLeftFromTabBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getFirstEnabledButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutRight()V

    :goto_0
    return-void
.end method

.method public focusInRightFromLocationBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getLastEnabledButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->onFocusOutLeft()V

    :goto_0
    return-void
.end method

.method public focusInRightFromTabBar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->focusInRight()V

    return-void
.end method

.method public forceCapture()V
    .locals 0

    return-void
.end method

.method public getAiButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getAiButton()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getAiButton()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAllButtonsList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getBackwardButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getBackwardButton()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getBackwardButton()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract synthetic getBaseLayout()Landroid/widget/LinearLayout;
.end method

.method public abstract synthetic getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
.end method

.method public getButton(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getForwardButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getForwardButton()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getForwardButton()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract synthetic getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;
.end method

.method public getMoreMenuButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getMoreMenuButton()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getMoreMenuButton()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract synthetic getOuterLayout()Landroid/view/View;
.end method

.method public abstract synthetic getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;
.end method

.method public abstract synthetic getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
.end method

.method public abstract synthetic getToolbarMainLayout()Landroid/widget/RelativeLayout;
.end method

.method public abstract synthetic getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;
.end method

.method public abstract synthetic getVisibleHeight()I
.end method

.method public isButtonListEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMenuContainerShowing()Z
    .locals 2

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getButton(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "si__ToolbarButtonLayout"

    const-string v1, "action_more is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isMoreMenuLeft()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReaderModeInProgress()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isReaderProgressVisible()Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mInstanceId:I

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->registerListener(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener$CountChangeNotifier;I)V

    return-void
.end method

.method public onContentBlockerStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onContentBlockerStateChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onContentBlockerStateChanged()V

    return-void
.end method

.method public onCurrentTabChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onCurrentTabChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onCurrentTabChanged()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mInstanceId:I

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->unRegisterListener(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener$CountChangeNotifier;I)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0d8b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarLeft:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0d99

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarRight:Landroid/widget/LinearLayout;

    const v0, 0x7f0b06af

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateToolbarButtons()V

    return-void
.end method

.method public onHighContrastModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onHighContrastModeChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onHighContrastModeChanged()V

    return-void
.end method

.method public onLoadFailed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onLoadFailed()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onLoadFailed()V

    return-void
.end method

.method public onLoadFinished()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onLoadFinished()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onLoadFinished()V

    return-void
.end method

.method public onLoadStarted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onLoadStarted()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onLoadStarted()V

    return-void
.end method

.method public onMyanmarFontChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateMyanmarFontButton()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateMyanmarFontButton()V

    return-void
.end method

.method public onNightModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateNightModeButton()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateNightModeButton()V

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLastUpdatedUnreadNotificationCount:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationBadge:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mNotificationButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateNotificationBadge()V

    :cond_0
    return-void
.end method

.method public onNotificationShowPrefChanged()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "si__ToolbarButtonLayout"

    const-string v1, "[NotificationManager] Show preference changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLastUpdatedUnreadNotificationCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->onNotificationCountChanged(I)V

    :cond_0
    return-void
.end method

.method public onPcVersionChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePcVersionButton()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePcVersionButton()V

    return-void
.end method

.method public onReaderPageVisibilityChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onReaderPageVisibilityChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onReaderPageVisibilityChanged()V

    return-void
.end method

.method public onSIXIconUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onSIXIconUpdated()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onSIXIconUpdated()V

    return-void
.end method

.method public onSplitModeStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onSplitModeStatusChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onSplitModeStatusChanged()V

    return-void
.end method

.method public setBackwardButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setBackwardButtonEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setBackwardButtonEnabled(Z)V

    return-void
.end method

.method public setForwardButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setForwardButtonEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setForwardButtonEnabled(Z)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    return-void
.end method

.method public shouldRefreshBitmap(II)Z
    .locals 1

    const/4 p0, 0x1

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    if-eq p1, p2, :cond_0

    return p0

    :cond_0
    if-gt p1, v0, :cond_1

    if-gt p2, v0, :cond_2

    :cond_1
    if-gt p2, v0, :cond_3

    if-le p1, v0, :cond_3

    :cond_2
    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public shouldUpdateButtons()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getAllToolbarItems(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getAllButtonsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->isButtonListEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public updateBrowsingAssistButton()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateBrowsingAssistButton()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateBrowsingAssistButton()V

    return-void
.end method

.method public updateOptionMenuBadgeVisibility(I)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateSettingsBadgeVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateAddOnsBadgeVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateBrowsingAssistAnimationVisibility()V

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->getButton(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mMoreBadge:Landroid/view/View;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f14105e

    if-lez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f14105a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateReadAloudButtonEnabled()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadAloudButton()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadAloudButton()V

    return-void
.end method

.method public updateReadHighlightsAloudButtonEnabled()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadHighlightsAloudButton()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadHighlightsAloudButton()V

    return-void
.end method

.method public updateSummaryButtonEnabled()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSummaryButton()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSummaryButton()V

    return-void
.end method

.method public updateToolbarButtons()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->clearToolbarButtons()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarLeft:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarRight:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mLeftButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setListener(Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mRightButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setListener(Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateLeftButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateRightButtons()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->updateToolbarLayoutPosition()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->mToolbarColor:Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarColor;->setBackground()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->setButtonLayoutListener()V

    return-void
.end method

.method public updateToolbarLayoutPosition()V
    .locals 0

    return-void
.end method
