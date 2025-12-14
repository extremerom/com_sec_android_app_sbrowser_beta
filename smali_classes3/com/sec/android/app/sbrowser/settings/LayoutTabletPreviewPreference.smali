.class public Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# static fields
.field private static final INTERPOLATOR_CHANGE_BOUNDS:Landroid/animation/TimeInterpolator;

.field private static final TRANSITION_CHANGE_BOUNDS:LY2/f0;

.field private static final TRANSITION_FADE_IN:LY2/f0;

.field private static final TRANSITION_FADE_OUT:LY2/f0;


# instance fields
.field mAddressBar:Landroid/view/View;

.field mAddressBarAtBottom:Z

.field mBookmarkBar:Landroid/view/View;

.field mBookmarkBarEnabled:Z

.field mItemView:Landroid/view/View;

.field mMergedAddressBar:Landroid/view/View;

.field mOneBarEnabled:Z

.field mTabBar:Landroid/view/View;

.field mTabBarEnabled:Z

.field mTabBarIsNever:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->INTERPOLATOR_CHANGE_BOUNDS:Landroid/animation/TimeInterpolator;

    new-instance v1, LY2/i;

    invoke-direct {v1}, LY2/i;-><init>()V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, LY2/f0;->setDuration(J)LY2/f0;

    invoke-virtual {v1, v0}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    sput-object v1, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->TRANSITION_CHANGE_BOUNDS:LY2/f0;

    new-instance v0, LY2/y;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LY2/y;-><init>(I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, LY2/f0;->setDuration(J)LY2/f0;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->TRANSITION_FADE_IN:LY2/f0;

    new-instance v0, LY2/y;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, LY2/y;-><init>(I)V

    invoke-virtual {v0, v1, v2}, LY2/f0;->setDuration(J)LY2/f0;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->TRANSITION_FADE_OUT:LY2/f0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isPcGuiSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0e0490

    goto :goto_0

    :cond_0
    const p1, 0x7f0e048f

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const-string p2, "pref_address_bar_bottom"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBarAtBottom:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const-string p2, "show_tab_bar_setting"

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarEnabled:Z

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarIsNever:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const-string p2, "show_bookmark_bar_setting_for_normal"

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBarEnabled:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const-string p2, "pref_one_bar_selection"

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mOneBarEnabled:Z

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public onBindViewHolder(Lw2/H;)V
    .locals 2
    .param p1    # Lw2/H;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mItemView:Landroid/view/View;

    const v1, 0x7f0b00ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBar:Landroid/view/View;

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBar:Landroid/view/View;

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0c89

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBar:Landroid/view/View;

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b075e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mMergedAddressBar:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lw2/H;->e:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->updateLayout()V

    return-void
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    new-instance v1, LY2/n0;

    invoke-direct {v1}, LY2/n0;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0b0176

    const v3, 0x7f0b0c89

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "pref_address_bar_bottom"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_1
    const-string v7, "show_tab_bar_setting"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move v6, v0

    goto :goto_0

    :sswitch_2
    const-string v7, "show_bookmark_bar_setting_for_normal"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move v6, v4

    goto :goto_0

    :sswitch_3
    const-string v7, "pref_one_bar_selection"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    packed-switch v6, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBarAtBottom:Z

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->TRANSITION_CHANGE_BOUNDS:LY2/f0;

    invoke-virtual {p1, v3, v5}, LY2/f0;->excludeTarget(IZ)LY2/f0;

    invoke-virtual {p1, v2, v5}, LY2/f0;->excludeTarget(IZ)LY2/f0;

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    move v6, v5

    :goto_1
    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarEnabled:Z

    if-ne p1, v0, :cond_5

    move p1, v4

    goto :goto_2

    :cond_5
    move p1, v5

    :goto_2
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarIsNever:Z

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->TRANSITION_CHANGE_BOUNDS:LY2/f0;

    invoke-virtual {p1, v3, v4}, LY2/f0;->excludeTarget(IZ)LY2/f0;

    invoke-virtual {p1, v2, v5}, LY2/f0;->excludeTarget(IZ)LY2/f0;

    goto :goto_3

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBarEnabled:Z

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->TRANSITION_CHANGE_BOUNDS:LY2/f0;

    invoke-virtual {p1, v3, v5}, LY2/f0;->excludeTarget(IZ)LY2/f0;

    invoke-virtual {p1, v2, v4}, LY2/f0;->excludeTarget(IZ)LY2/f0;

    goto :goto_3

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mOneBarEnabled:Z

    :goto_3
    sget-object p1, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->TRANSITION_CHANGE_BOUNDS:LY2/f0;

    invoke-virtual {v1, p1}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->TRANSITION_FADE_IN:LY2/f0;

    invoke-virtual {p1, v0}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->TRANSITION_FADE_OUT:LY2/f0;

    invoke-virtual {p1, v0}, LY2/n0;->addTransition(LY2/f0;)LY2/n0;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mItemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1, v1}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->updateLayout()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x500514d5 -> :sswitch_3
        -0x395e9601 -> :sswitch_2
        0x18966b38 -> :sswitch_1
        0x4af71c9e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDetached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public updateLayout()V
    .locals 13

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isPcGuiSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->updateLayoutForPcGui()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mMergedAddressBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBarAtBottom:Z

    const v5, 0x7f0b0c89

    const v6, 0x7f0b075e

    const v7, 0x7f0b00ad

    const/4 v8, 0x3

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v4, :cond_3

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const v4, 0x7f0b01ba

    invoke-virtual {v0, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBar:Landroid/view/View;

    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mMergedAddressBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBar:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mOneBarEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarIsNever:Z

    if-eqz v0, :cond_2

    :cond_1
    move v6, v7

    :cond_2
    invoke-virtual {v1, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBar:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBar:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mMergedAddressBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mOneBarEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarIsNever:Z

    if-eqz v0, :cond_5

    :cond_4
    move v6, v7

    :cond_5
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarEnabled:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mOneBarEnabled:Z

    if-eqz v1, :cond_7

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v10

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBarEnabled:Z

    if-eqz v1, :cond_8

    move v1, v10

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mOneBarEnabled:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarIsNever:Z

    if-eqz v1, :cond_a

    :cond_9
    move v1, v10

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mMergedAddressBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mOneBarEnabled:Z

    if-eqz v1, :cond_b

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarIsNever:Z

    if-eqz p0, :cond_c

    :cond_b
    move v10, v2

    :cond_c
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateLayoutForPcGui()V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mMergedAddressBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBarAtBottom:Z

    const v5, 0x7f0b075e

    const/16 v6, 0xa

    const v7, 0x7f0b00ad

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBar:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mOneBarEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarIsNever:Z

    if-eqz v4, :cond_1

    :cond_0
    move v5, v7

    :cond_1
    invoke-virtual {v1, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBar:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const v1, 0x7f0b0176

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBar:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mMergedAddressBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBar:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const v0, 0x7f0b01ba

    invoke-virtual {v2, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBar:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const v1, 0x7f0b0c89

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mMergedAddressBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarEnabled:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mOneBarEnabled:Z

    if-eqz v1, :cond_4

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v9

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mBookmarkBarEnabled:Z

    if-eqz v1, :cond_5

    move v1, v9

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mAddressBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mOneBarEnabled:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarIsNever:Z

    if-eqz v1, :cond_7

    :cond_6
    move v1, v9

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mMergedAddressBar:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mOneBarEnabled:Z

    if-eqz v1, :cond_8

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutTabletPreviewPreference;->mTabBarIsNever:Z

    if-eqz p0, :cond_9

    :cond_8
    move v9, v2

    :cond_9
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
