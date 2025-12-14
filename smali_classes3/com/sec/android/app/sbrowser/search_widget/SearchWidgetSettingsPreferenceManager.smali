.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\tJ\u0015\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u000bJ\r\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001d\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\r\u0010\u0016\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u0015\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001d\u0010#\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010%\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008%\u0010 R\u001c\u0010*\u001a\n \'*\u0004\u0018\u00010&0&8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;",
        "",
        "<init>",
        "()V",
        "",
        "mode",
        "appWidgetId",
        "Ldb/r;",
        "setColorMode",
        "(II)V",
        "getColorMode",
        "(I)I",
        "percentage",
        "setTransparency",
        "getTransparency",
        "getSearchWidgetDefaultTransparency",
        "()I",
        "",
        "setMatchDarkMode",
        "(ZI)V",
        "showRecentSearches",
        "setShowRecentSearches",
        "getSaveRecentSearches",
        "()Z",
        "setSaveRecentSearches",
        "(Z)V",
        "getMatchDarkMode",
        "(I)Z",
        "getShowRecentSearches",
        "",
        "appWidgetIds",
        "restoreUserSettingsFromOldWidget",
        "([I)V",
        "Landroid/appwidget/AppWidgetManager;",
        "appWidgetManager",
        "restoreUserSettingsBySmartSwitchWithWidgetIds",
        "(Landroid/appwidget/AppWidgetManager;[I)V",
        "updatePreferencesForNewWidget",
        "Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;",
        "kotlin.jvm.PlatformType",
        "getSettingPreference",
        "()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;",
        "settingPreference",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getColorMode(I)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getShouldShowNewSearchWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchWidgetColorMode(II)I

    move-result p0

    return p0
.end method

.method public final getMatchDarkMode(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchWidgetMatchDarkMode(IZ)Z

    move-result p0

    return p0
.end method

.method public final getSaveRecentSearches()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSaveRecentSearches()Z

    move-result p0

    return p0
.end method

.method public final getSearchWidgetDefaultTransparency()I
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getShouldShowNewSearchWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getTransparencyFromProgress(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getShowRecentSearches(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchWidgetShowRecentSearches(IZ)Z

    move-result p0

    return p0
.end method

.method public final getTransparency(I)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSearchWidgetDefaultTransparency()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchWidgetTransparency(II)I

    move-result p0

    return p0
.end method

.method public final restoreUserSettingsBySmartSwitchWithWidgetIds(Landroid/appwidget/AppWidgetManager;[I)V
    .locals 12
    .param p1    # Landroid/appwidget/AppWidgetManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appWidgetManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetIds"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    invoke-virtual {p1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Old_WidgetId"

    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "New_WidgetId"

    invoke-virtual {v4, v7, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "restoreUserSettingsWithWidgetIds : oldId : "

    const-string v10, ", newId : "

    const-string v11, ", widgetId : "

    invoke-static {v6, v8, v9, v10, v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "SearchWidgetSettingsPreferenceManager"

    invoke-static {v9, v3, v10}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz v6, :cond_1

    if-eqz v8, :cond_1

    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v7, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    if-eq v6, v8, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isSearchWidgetWithIdExists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "restoreUserSettingsWithWidgetIds restoring to new widget id"

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getColorMode(I)I

    move-result v3

    invoke-virtual {p0, v3, v8}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setColorMode(II)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getTransparency(I)I

    move-result v3

    invoke-virtual {p0, v3, v8}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setTransparency(II)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getShowRecentSearches(I)Z

    move-result v3

    invoke-virtual {p0, v3, v8}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setShowRecentSearches(ZI)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getMatchDarkMode(I)Z

    move-result v3

    invoke-virtual {p0, v3, v8}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setMatchDarkMode(ZI)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->removeSearchWidgetWithIds(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setIsOldSearchWidgetUpdated(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final restoreUserSettingsFromOldWidget([I)V
    .locals 7
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appWidgetIds"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchWidgetOldColorMode(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchWidgetOldTransparency(I)I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchWidgetOldMatchDarkMode(Z)Z

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchWidgetOldShowRecentSearches(Z)Z

    move-result v5

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-ne v3, v4, :cond_0

    if-eq v5, v4, :cond_2

    :cond_0
    const-string v4, "SearchWidgetSettingsPreferenceManager"

    const-string v6, "restoreUserSettingsFromOldWidget"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, p1

    :goto_0
    if-ge v1, v4, :cond_1

    aget v6, p1, v1

    invoke-virtual {p0, v0, v6}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setColorMode(II)V

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setMatchDarkMode(ZI)V

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setShowRecentSearches(ZI)V

    invoke-virtual {p0, v2, v6}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setTransparency(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->removeSearchWidgetOldPreferences()V

    :cond_2
    return-void
.end method

.method public final setColorMode(II)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSearchWidgetColorMode(II)V

    return-void
.end method

.method public final setMatchDarkMode(ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSearchWidgetMatchDarkMode(IZ)V

    return-void
.end method

.method public final setSaveRecentSearches(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSaveRecentSearches(Z)V

    return-void
.end method

.method public final setShowRecentSearches(ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSearchWidgetShowRecentSearches(IZ)V

    return-void
.end method

.method public final setTransparency(II)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSearchWidgetTransparency(II)V

    return-void
.end method

.method public final updatePreferencesForNewWidget([I)V
    .locals 9
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appWidgetIds"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getIsOldSearchWidgetUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "updatePreferencesForNewWidget"

    const-string v1, "SearchWidgetSettingsPreferenceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget v3, p1, v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getIsNewSearchWidgetAdded(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getTransparency(I)I

    move-result v4

    sget-object v5, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getNewTransparencyFromOldWidgetTransparency(I)I

    move-result v5

    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setTransparency(II)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "restoreUserSettingsWithWidgetIds restoring id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " oldTransparency: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " newTransparency: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getColorMode(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getMatchDarkMode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eq v4, v5, :cond_2

    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setColorMode(II)V

    :cond_2
    const-string v6, " oldColor: "

    const-string v8, " newColor: "

    invoke-static {v3, v4, v7, v6, v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v5, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSettingPreference()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setIsOldSearchWidgetUpdated(Z)V

    return-void
.end method
