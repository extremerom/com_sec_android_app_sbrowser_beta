.class public Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

.field private mContext:Landroid/content/Context;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mTaskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mTaskId:I

    return-void
.end method

.method private setIconColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    check-cast p1, Landroid/widget/ImageButton;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private setTabsGroupColor(Landroidx/appcompat/widget/AppCompatTextView;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getTabGroupTheme()I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mContext:Landroid/content/Context;

    const v0, 0x7f060d65

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p0, 0x7f080778

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)I
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    const p0, 0x7f0800ea

    goto :goto_0

    :cond_1
    const p0, 0x7f0800e9

    :goto_0
    return p0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeBlack()Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f0800ee

    return p0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeSepia()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f0800ef

    return p0

    :cond_4
    if-eqz p2, :cond_5

    const p0, 0x7f0800e7

    return p0

    :cond_5
    const p0, 0x7f0800e8

    return p0

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    const p0, 0x7f0800ed

    goto :goto_2

    :cond_7
    const p0, 0x7f0800ec

    :goto_2
    return p0
.end method

.method public getBackgroundColorResultView(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result p0

    const v0, 0x7f060c22

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeBlack()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f060037

    return p0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeSepia()Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f060038

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f06019a

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f060199

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f06019d

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeBlack()Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f06019b

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeSepia()Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f06019c

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p0

    return p0

    :cond_5
    const p1, 0x7f060d5d

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public setBackground()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v3

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mTaskId:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getGroupColorValue()I

    move-result v7

    new-instance v0, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;-><init>(ZZZILcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isInGroup()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V

    return-void
.end method

.method public setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getAllToolbarItems(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const v5, 0x7f0b0078

    if-ne v3, v5, :cond_1

    invoke-virtual {p0, v4, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setTabsColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V

    goto :goto_1

    :cond_1
    const v5, 0x7f0b0050

    if-ne v3, v5, :cond_2

    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setBrowserAssistColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    goto :goto_1

    :cond_2
    const v5, 0x7f0b0073

    if-ne v3, v5, :cond_3

    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setSettingsColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    goto :goto_1

    :cond_3
    const v5, 0x7f0b0069

    if-ne v3, v5, :cond_4

    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setMoreColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    goto :goto_1

    :cond_4
    const v5, 0x7f0b067b

    if-ne v3, v5, :cond_5

    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setNotificationColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    goto :goto_1

    :cond_5
    const v5, 0x7f0b005d

    if-ne v3, v5, :cond_6

    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setBadgeColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionIdFromMenuId(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->onSIXIconUpdated()V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setIconColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public setBadgeColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    const v0, 0x7f0b01d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setBrowserAssistColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    const v0, 0x7f0b01cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/toolbar/ToolbarImageView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mButtonsManager:Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public setMoreColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    const v0, 0x7f0b01da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/toolbar/ToolbarImageView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNotificationColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    const v0, 0x7f0b01cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setSettingsColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    const v0, 0x7f0b01dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/toolbar/ToolbarImageView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTabsColor(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Z)V
    .locals 1

    const v0, 0x7f0b0d18

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->setTabsGroupColor(Landroidx/appcompat/widget/AppCompatTextView;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/BottombarColor;->getIconColor(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f080777

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
