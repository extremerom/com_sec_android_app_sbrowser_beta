.class Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener$CountChangeNotifier;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener$CountChangeNotifier;",
        "Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;"
    }
.end annotation


# instance fields
.field private mBadgeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInstanceId:I

.field private mIsAdapterAttachedToRecyclerView:Z

.field private final mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

.field private final mMenu:Landroid/view/Menu;

.field private final mPrimaryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Menu;Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/Menu;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mMenu:Landroid/view/Menu;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mPrimaryItems:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mSecondaryItems:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    move-result-object p3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p3, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getOptionMenuBadgeIdMap(Landroid/app/Activity;Landroid/view/Menu;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mBadgeMap:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mIsAdapterAttachedToRecyclerView:Z

    iput p6, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mInstanceId:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->lambda$onBindViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->lambda$onBindViewHolder$3(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    return-object p0
.end method

.method private getItemGroupId(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getItemMenuId(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    :goto_0
    return p0
.end method

.method private isLanguageBengali()Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;->onItemClick(Landroid/view/MenuItem;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;->dismissMoreMenuDialog()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0069

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarUtil;->showNightModeToast(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    if-eqz p0, :cond_0

    const-string p1, "20053"

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;->showSummarizePopupWindow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$3(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f140454

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void
.end method

.method private updateContentsBlockedCount(Landroid/widget/TextView;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getCurrentTemporarilyUnblockAds(Ljava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->shouldDisplayBadge(Landroid/content/Context;)Z

    move-result p0

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    if-nez p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getNumberOfBlockedContents()I

    move-result p0

    const/16 v0, 0x63

    if-le p0, v0, :cond_2

    const-string p0, "%d+"

    goto :goto_0

    :cond_2
    const-string v0, "%d"

    move-object v3, v0

    move v0, p0

    move-object p0, v3

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    const-string p0, ""

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getIconColor()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f060d90

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mPrimaryItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mSecondaryItems:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mSecondaryItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItemMenuId(I)I

    move-result p0

    const p1, 0x7f0b0078

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTextColor()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f06026c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mInstanceId:I

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->registerListener(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener$CountChangeNotifier;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mIsAdapterAttachedToRecyclerView:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/toolbar/p;-><init>(Landroidx/recyclerview/widget/u0;Landroidx/recyclerview/widget/h1;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mDivider:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mIcon:Landroid/widget/ImageView;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->isLanguageBengali()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBreakStrategy(I)V

    :cond_2
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mBadgeMap:Ljava/util/HashMap;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f0b067b

    const v6, 0x7f14105a

    const-string v7, ", "

    if-ne v4, v5, :cond_5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mBadge:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f14083b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f14082d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, -0x2

    if-ne v1, v4, :cond_4

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mBadge:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    invoke-static {v5, v4, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mBadge:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mBadge:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    invoke-static {v5, v4, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mBadge:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItemMenuId(I)I

    move-result v1

    const v4, 0x7f0b0057

    if-ne v1, v4, :cond_7

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mBlockedCounts:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->updateContentsBlockedCount(Landroid/widget/TextView;)V

    goto :goto_2

    :cond_7
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mBlockedCounts:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getIconColor()I

    move-result v1

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v4, 0x7f0b04f1

    if-eqz v2, :cond_8

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItemGroupId(I)I

    move-result v5

    if-eq v5, v4, :cond_8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getTextColor()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    const v5, 0x7f080434

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f060d6e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_9
    iget-object v5, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    iget-object v2, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v5

    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItemMenuId(I)I

    move-result v2

    const v5, 0x7f0b006b

    const/4 v6, 0x1

    if-ne v2, v5, :cond_a

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/toolbar/q;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/q;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_a
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItemMenuId(I)I

    move-result v2

    const v5, 0x7f0b0077

    if-ne v2, v5, :cond_b

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;->isSummaryAvailable()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/toolbar/q;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/q;-><init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRunningInDexOnPc(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItemMenuId(I)I

    move-result v2

    const v5, 0x7f0b0072

    if-ne v2, v5, :cond_c

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/toolbar/r;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/sec/android/app/sbrowser/toolbar/r;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_c
    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    if-ne v2, v4, :cond_e

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v2

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionIdFromMenuId(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->isSecretModeEnabled()Z

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->getActionStatus(ZLandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->isSupportMainSwitch()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getTransResourceId()I

    move-result v0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItemMenuId(I)I

    move-result v2

    if-ne v0, v2, :cond_e

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0, v6}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    :goto_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->getItemMenuId(I)I

    move-result p2

    const v0, 0x7f0b0078

    if-ne p2, v0, :cond_f

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;->getTabCount()I

    move-result p0

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mTabCountView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "%d"

    invoke-static {v0, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mTabCountView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;->mTabCountView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    return-void
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "pref_add_ons_visited"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "extensions_has_contentblock_extension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "extensions_get_more"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "extensions_has_new_fixed_extension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "extensions_has_installed_extension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "more_menu_item_list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "show_n_badge_notification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_7
    const-string v1, "pref_video_assistant_visit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_8
    const-string v1, "pref_contents_push_visit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_9
    const-string v1, "tools_primary_item_list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->updateBadgeVisibility()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x711a1d17 -> :sswitch_9
        -0x477135f1 -> :sswitch_8
        -0x33519036 -> :sswitch_7
        -0x2c661486 -> :sswitch_6
        -0x28fc7a6c -> :sswitch_5
        -0x1c4efe96 -> :sswitch_4
        0xa684045 -> :sswitch_3
        0x4343a669 -> :sswitch_2
        0x502557c4 -> :sswitch_1
        0x69c413a5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0e04d5

    invoke-virtual {p0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$MenuItemHolder;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mInstanceId:I

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->unRegisterListener(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener$CountChangeNotifier;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mIsAdapterAttachedToRecyclerView:Z

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    const v1, 0x7f0b067b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->shouldShowNotificationBadge(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isNotificationsVisited()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mBadgeMap:Ljava/util/HashMap;

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mBadgeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mBadgeMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public onNotificationShowPrefChanged()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->shouldShowNotificationBadge(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mBadgeMap:Ljava/util/HashMap;

    const v1, 0x7f0b067b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public updateBadgeVisibility()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getOptionMenuBadgeIdMap(Landroid/app/Activity;Landroid/view/Menu;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mBadgeMap:Ljava/util/HashMap;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->mIsAdapterAttachedToRecyclerView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
