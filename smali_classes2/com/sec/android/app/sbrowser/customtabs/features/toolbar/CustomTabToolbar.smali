.class public Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;,
        Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$MaximizeButtonCallback;
    }
.end annotation


# instance fields
.field private mActionIcon:Landroid/widget/ImageButton;

.field private mActionIconContainer:Landroid/view/View;

.field private mCloseButtonPosition:I

.field private mCloseIcon:Landroid/widget/ImageButton;

.field private mCloseIconContainer:Landroid/view/View;

.field private final mContainerVisibilityChangeObserverList:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCustomActionButtonParams:Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

.field private mCustomCloseIcon:Z

.field private mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

.field private mDivider:Landroid/view/View;

.field private mDragBarDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDragHandleView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mHandleStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;

.field private mLastProgress:I

.field private mListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

.field private mMaximizeButtonEnabled:Z

.field private mMenuPopup:Landroid/widget/PopupMenu;

.field private mOptionMenuIcon:Landroid/widget/ImageButton;

.field private mOptionMenuIconContainer:Landroid/view/View;

.field private mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field private mSecurityIcon:Landroid/widget/ImageButton;

.field private mSecurityIconContainer:Landroid/view/View;

.field private mTitleBar:Landroid/widget/TextView;

.field private mTouchDownEventTime:J

.field private mTouchDownY:F

.field private mUrlBar:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContainerVisibilityChangeObserverList:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    sget-object p2, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    sget-object p2, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;->EMPTY:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCustomCloseIcon:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->lambda$initializeMenuPopup$1(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$MaximizeButtonCallback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->lambda$initSideSheetMaximizeButton$0(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$MaximizeButtonCallback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->lambda$setTouchDelegateForCloseIcon$3()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->lambda$setTouchDelegateForOptionMenuIcon$6()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->lambda$addCustomActionButton$2(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private enableCustomTabMenu(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->lambda$setTouchDelegateForSecurityIcon$4()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->lambda$setTouchDelegateForActionIcon$5()V

    return-void
.end method

.method private getColor(I)I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [I

    filled-new-array {p0}, [[I

    move-result-object p0

    new-instance v0, Landroid/content/res/ColorStateList;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private getDividerColor()I
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    const v1, 0x7f0602d5

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasToolbarColor()Z

    move-result v0

    const v2, 0x7f0602d6

    const v3, 0x7f0602d7

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getToolbarColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->needLightTheme(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getIconBackground()I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    const v1, 0x7f08076c

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasToolbarColor()Z

    move-result v0

    const v2, 0x7f08076b

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getToolbarColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->needLightTheme(I)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method private getIconTintColor()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    const v1, 0x7f0602d8

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasExtraTitleColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getExtraTitleColor()I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasToolbarColor()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getToolbarColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->needLightTheme(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0602da

    goto :goto_0

    :cond_2
    const v0, 0x7f0602d9

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getMoreTextColor()I

    move-result p0

    return p0

    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getProgressBarBackgroundColor()I
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    const v1, 0x7f0602db

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasToolbarColor()Z

    move-result v0

    const v2, 0x7f0602dc

    const v3, 0x7f0602dd

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getToolbarColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->needLightTheme(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getProgressBarBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getProgressBarBackgroundColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private getProgressBarColor()I
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    const v1, 0x7f0602de

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasToolbarColor()Z

    move-result v0

    const v2, 0x7f0602df

    const v3, 0x7f0602e0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getToolbarColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->needLightTheme(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getProgressBarTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getProgressBarColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private getShareIconTintColor()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    const v1, 0x7f0602e1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasExtraTitleColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getExtraTitleColor()I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasToolbarColor()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getToolbarColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->needLightTheme(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0602e3

    goto :goto_0

    :cond_2
    const v0, 0x7f0602e2

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getMoreTextColor()I

    move-result p0

    return p0

    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getTitleBarTextColor()I
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    const v1, 0x7f0602e5

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasExtraTitleColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getExtraTitleColor()I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasToolbarColor()Z

    move-result v0

    const v2, 0x7f0602e6

    const v3, 0x7f0602e7

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getToolbarColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->needLightTheme(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_5
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getUrlBarTextColor()I
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    const v1, 0x7f0602e8

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasExtraTitleColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getExtraTitleColor()I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasToolbarColor()Z

    move-result v0

    const v2, 0x7f0602e9

    const v3, 0x7f0602ea

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getToolbarColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->needLightTheme(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0

    :cond_5
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p0

    return p0
.end method

.method private initializeActionIcon()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->shouldRemoveMenuItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07037d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private initializeCloseIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getCloseButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getCloseButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCustomCloseIcon:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initializeMenuPopup()V
    .locals 6

    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    const v3, 0x7f1501f4

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f10000a

    invoke-virtual {v0, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getMenuTitles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f0b039f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b03a2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f14086d

    goto :goto_1

    :cond_1
    const v3, 0x7f14086e

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->isExtraRemoveOpenInInternet()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b039c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->shouldAddToHomeScreenVisible(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b039a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b039d

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isCustomTabFindOnPageOptionMenuEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/b;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-void
.end method

.method private initializeOptionMenuIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIconContainer:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->shouldRemoveMenuItems()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initializeSecurityIcon()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initializeTitleBar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTitleVisibilityState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->showTitleAfterCompleteLoad()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initializeUrlBar()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTitleVisibilityState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasExtraTitleSize()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getExtraTitleSize()F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07037b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasExtraTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getExtraTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->showTitleAfterCompleteLoad()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method private isEndPositionInToolbar(Landroid/view/View;)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    if-eq p1, v4, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    if-ne p1, p0, :cond_3

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private isStartPositionInToolbar(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$addCustomActionButton$2(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->shouldShowShareMenuItem()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;->onShareUrl()V

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initSideSheetMaximizeButton$0(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$MaximizeButtonCallback;Landroid/view/View;)V
    .locals 0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$MaximizeButtonCallback;->onClick()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setMaximizeButtonDrawable(Z)V

    return-void
.end method

.method private synthetic lambda$initializeMenuPopup$1(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setTouchDelegateForActionIcon$5()V
    .locals 11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07036a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070369

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    new-instance v3, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIconContainer:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;-><init>(Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    if-eqz v0, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    move-object v5, v3

    move v8, v10

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->addTouchDelegate(Landroid/view/View;IIII)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->updateTouchDelegates()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIconContainer:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private synthetic lambda$setTouchDelegateForCloseIcon$3()V
    .locals 11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070372

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070371

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    new-instance v3, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIconContainer:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;-><init>(Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    if-eqz v0, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    move-object v5, v3

    move v8, v10

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->addTouchDelegate(Landroid/view/View;IIII)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->updateTouchDelegates()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIconContainer:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private synthetic lambda$setTouchDelegateForOptionMenuIcon$6()V
    .locals 11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07037e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07037d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    new-instance v3, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIconContainer:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;-><init>(Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    if-eqz v0, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    move-object v5, v3

    move v8, v10

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->addTouchDelegate(Landroid/view/View;IIII)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->updateTouchDelegates()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIconContainer:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private synthetic lambda$setTouchDelegateForSecurityIcon$4()V
    .locals 11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070382

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070381

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    new-instance v3, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIconContainer:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;-><init>(Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    if-eqz v0, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    move-object v5, v3

    move v8, v10

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->addTouchDelegate(Landroid/view/View;IIII)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->updateTouchDelegates()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIconContainer:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private maybeSwapCloseAndMenuButtons()V
    .locals 13

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseButtonPosition:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIconContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIconContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIconContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIconContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07038c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07037e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07037d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070372

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070371

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v9, 0x15

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v10, 0x14

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v11, 0x11

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIconContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v12

    invoke-virtual {v1, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v11, 0x10

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIconContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v12

    invoke-virtual {v2, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIconContainer:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIconContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIconContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIconContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIconContainer:Landroid/view/View;

    invoke-virtual {v0, v7, v4, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIconContainer:Landroid/view/View;

    invoke-virtual {p0, v5, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private needLightTheme(I)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->shouldUseLightForegroundOnBackground(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private setDragBarBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDragBarDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private setDragHandleBackgroundColor(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDragHandleView:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private setFocusFlow(ZZ)V
    .locals 3

    const v0, 0x7f0b03ac

    const v1, 0x7f0b03aa

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    const v2, 0x7f0b03b2

    invoke-virtual {p1, v2}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setNextFocusRightId(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setMaximizeButtonDrawable(Z)V
    .locals 8

    if-eqz p1, :cond_0

    const v0, 0x7f080294

    goto :goto_0

    :cond_0
    const v0, 0x7f080293

    :goto_0
    if-eqz p1, :cond_1

    const p1, 0x7f1403ff

    goto :goto_1

    :cond_1
    const p1, 0x7f1403fe

    :goto_1
    const v1, 0x7f0b03b4

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getIconTintColor()I

    move-result v5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getIconBackground()I

    move-result v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateCustomActionButtonVisuals(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;IILjava/lang/String;)V

    return-void
.end method

.method private setMaximizeButtonVisibility()V
    .locals 4

    const v0, 0x7f0b03b5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMaximizeButtonEnabled:Z

    const/16 v2, 0x8

    const-string v3, "CustomTabToolbar"

    if-nez v1, :cond_0

    const-string p0, "setMaximizeButtonVisibility(): gone"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string v1, "setMaximizeButtonVisibility(): visible"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMaximizeButtonEnabled:Z

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setTouchDelegateForActionIcon()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIconContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/a;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private setTouchDelegateForCloseIcon()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIconContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/a;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private setTouchDelegateForOptionMenuIcon()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIconContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/a;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private setTouchDelegateForSecurityIcon()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIconContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/a;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private shouldAddToHomeScreenVisible(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAddShortCutToHomeScreenAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "about:blank"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->shouldShowFullFTU(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/SamsungAccountPrivacyUtils$Companion;->isSamsungAccountPrivacyUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateActionIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCustomActionButtonParams:Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->shouldTint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getShareIconTintColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getIconBackground()I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundWithoutChangingHotspot(Landroid/view/View;I)V

    return-void
.end method

.method private updateCloseIcon()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCustomCloseIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getIconTintColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getIconBackground()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundWithoutChangingHotspot(Landroid/view/View;I)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getIconTintColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getBackgroundColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->needLightTheme(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f060df7

    goto :goto_0

    :cond_1
    const v1, 0x7f060129

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getCloseButtonPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setCloseButtonPosition(I)V

    return-void
.end method

.method private updateCustomActionButtonVisuals(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;IILjava/lang/String;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-static {p1, p4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundWithoutChangingHotspot(Landroid/view/View;I)V

    invoke-static {p1, p5}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCustomActionButtonVisuals(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)V
    .locals 4
    .param p1    # Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const v3, 0x7f07038b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    mul-int/2addr v3, v0

    div-int/2addr v3, v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDivider()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDivider:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getDividerColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private updateMenuPopup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b039e

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->canGoForward()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b03a4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->shouldShowShareMenuItem()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b039c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->shouldAddToHomeScreenVisible(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private updateMoreOptionIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getIconTintColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getIconBackground()I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundWithoutChangingHotspot(Landroid/view/View;I)V

    return-void
.end method

.method private updateProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getProgressBarTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getProgressBarBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateSecurityIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getIconTintColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getIconBackground()I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundWithoutChangingHotspot(Landroid/view/View;I)V

    return-void
.end method

.method private updateSecurityLevel()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getSecurityLevel()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->isExtraRemoveSecurityIcon()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    const v1, 0x7f08025d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14087b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    const v1, 0x7f080371

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14087c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIconContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140aa1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setFocusFlow(ZZ)V

    return-void

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIconContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateStatusBar()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    const v1, 0x7f0602e4

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasExtraStatusBarColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getExtraStatusBarColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->needLightTheme(I)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasToolbarColor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getToolbarColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->needLightTheme(I)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getIndicatorColor()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    return-void
.end method

.method private updateTitleBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getTitleBarTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateTouchDelegate()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setTouchDelegateForCloseIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setTouchDelegateForSecurityIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setTouchDelegateForActionIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setTouchDelegateForOptionMenuIcon()V

    return-void
.end method

.method private updateUrlBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getTitleBarTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getUrlBarTextColor()I

    move-result p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public addContainerVisibilityChangeObserver(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContainerVisibilityChangeObserverList:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCustomActionButton(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1    # Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCustomActionButtonParams:Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIconContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateCustomActionButtonVisuals(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)V

    return-void
.end method

.method public canForceCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getBackground()Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    invoke-super {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public bridge synthetic getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getBackground()Landroid/graphics/drawable/ColorDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundColor()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getDefaultToolbarColor()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasToolbarColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getToolbarColor()I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getIndicatorColor()I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getDefaultToolbarColor()I

    move-result p0

    return p0
.end method

.method public getMenuAnchorView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIconContainer:Landroid/view/View;

    return-object p0
.end method

.method public getSecurityIcon()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getToolbarButtons()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCustomActionButtonParams:Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->shouldRemoveMenuItems()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getVisibleHeight()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public getVisibleWidth()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public initSideSheetMaximizeButton(ZLcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$MaximizeButtonCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initSideSheetMaximizeButton() => "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabToolbar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b03b4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMaximizeButtonEnabled:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setMaximizeButtonDrawable(Z)V

    new-instance p1, LFa/b;

    const/4 v1, 0x4

    invoke-direct {p1, v1, p0, p2}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setMaximizeButtonVisibility()V

    return-void
.end method

.method public initializeLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->initializeCloseIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->initializeSecurityIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->initializeActionIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->initializeOptionMenuIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->initializeTitleBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->initializeUrlBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->initializeMenuPopup()V

    return-void
.end method

.method public invalidateLayout()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b03af

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;->onOptionMenuIconClicked()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mLastProgress:I

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->enableCustomTabMenu(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMenuPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b03b2

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;->onShowPageInfo()V

    :cond_3
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b03b6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    const v0, 0x7f0b03b7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    const v0, 0x7f0b03ad

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIconContainer:Landroid/view/View;

    const v0, 0x7f0b03ac

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    const v0, 0x7f0b03b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIconContainer:Landroid/view/View;

    const v0, 0x7f0b03b2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mSecurityIcon:Landroid/widget/ImageButton;

    const v0, 0x7f0b03ab

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIconContainer:Landroid/view/View;

    const v0, 0x7f0b03aa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    const v0, 0x7f0b03b0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIconContainer:Landroid/view/View;

    const v0, 0x7f0b03af

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    const v0, 0x7f0b03b1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const v0, 0x7f0b03ae

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateVisualsForState()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mHandleStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mTouchDownY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mTouchDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mTouchDownEventTime:J

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    or-int/2addr p2, p3

    const/16 p3, 0x14

    if-eq p2, p3, :cond_6

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_3

    const p3, 0x2000003d

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->isStartPositionInToolbar(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;->onRequestFocus()V

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->isEndPositionInToolbar(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;->onRequestFocus()V

    return v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;->onRequestFocus()V

    return v1
.end method

.method public onTakeFocus(Z)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mActionIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mHandleStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mTouchDownEventTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mTouchDownY:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x43480000    # 200.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;->onSwipeBottom()V

    :cond_1
    return v1
.end method

.method public openOptionMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mOptionMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    move-result p0

    return p0
.end method

.method public removeContainerVisibilityChangeObserver(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContainerVisibilityChangeObserverList:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSideSheetMaximizeButton()V
    .locals 2

    const v0, 0x7f0b03b4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b03b5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mMaximizeButtonEnabled:Z

    return-void
.end method

.method public requestBitmap()Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public setCloseButtonPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseButtonPosition:I

    return-void
.end method

.method public setCustomTabCloseClickHandler(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    return-void
.end method

.method public setDragBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDragBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getBackgroundColor()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setDragBarBackgroundColor(I)V

    return-void
.end method

.method public setDragHandleBackground(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDragHandleView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getBackgroundColor()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->shouldUseLightForegroundOnBackground(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0602d1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7f0602d2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setDragHandleBackgroundColor(I)V

    return-void
.end method

.method public setHandleStrategy(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mHandleStrategy:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mCloseIcon:Landroid/widget/ImageButton;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LG6/e;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;->setCloseClickHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mListener:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mContainerVisibilityChangeObserverList:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldCaptureBitmap()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shouldCaptureLater()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public update()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateSecurityLevel()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateDisplayedTitle()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateMenuPopup()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateVisualsForState()V

    return-void
.end method

.method public updateBackground()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setDragBarBackgroundColor(I)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->shouldUseLightForegroundOnBackground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0602d1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0602d2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->getColor(I)I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->setDragHandleBackgroundColor(I)V

    return-void
.end method

.method public updateCustomActionButton(ILcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)V
    .locals 0
    .param p2    # Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-lez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateCustomActionButtonVisuals(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)V

    return-void
.end method

.method public updateDisplayedTitle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->showTitleAfterCompleteLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getExtraTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getExtraTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "about:blank"

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->splitPathFromUrlDisplayText(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mUrlBar:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateProgressBar(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mLastProgress:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz p1, :cond_1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateVisualsForState()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateBackground()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateCloseIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateSecurityIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateActionIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateMoreOptionIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateTitleBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateUrlBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateProgressBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateDivider()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateStatusBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->maybeSwapCloseAndMenuButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->updateTouchDelegate()V

    return-void
.end method
