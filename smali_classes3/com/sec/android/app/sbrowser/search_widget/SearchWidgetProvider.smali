.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;
.super LR1/n;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\'\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J/\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0008R\u0014\u0010\u001d\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;",
        "LR1/n;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Ldb/r;",
        "onEnabled",
        "(Landroid/content/Context;)V",
        "Landroid/content/Intent;",
        "intent",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Landroid/appwidget/AppWidgetManager;",
        "appWidgetManager",
        "",
        "appWidgetIds",
        "onUpdate",
        "(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V",
        "",
        "appWidgetId",
        "Landroid/os/Bundle;",
        "newOptions",
        "onAppWidgetOptionsChanged",
        "(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V",
        "onDisabled",
        "LR1/m;",
        "getGlanceAppWidget",
        "()LR1/m;",
        "glanceAppWidget",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final canShowNewWidget:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0x11170

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->canShowNewWidget:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz1/q0;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCanShowNewWidget$cp()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->canShowNewWidget:Z

    return v0
.end method

.method public static final updateAllWidgetViews(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;->updateAllWidgetViews(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getGlanceAppWidget()LR1/m;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getGlanceAppWidget()Lz1/V;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->getGlanceAppWidget()LR1/m;

    move-result-object p0

    return-object p0
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/appwidget/AppWidgetManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetManager"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newOptions"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;

    invoke-static {v0, p4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;->access$calculateWidth(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;Landroid/os/Bundle;)I

    move-result v1

    sget-boolean v2, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->canShowNewWidget:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[onAppWidgetOptionsChanged] isNewWidget: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SearchWidgetProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "7503"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "750"

    invoke-static {v5, v3, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lz1/q0;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 p0, 0x1

    if-ne v1, p0, :cond_1

    new-instance p0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const v2, 0x7f0e0818

    invoke-direct {p0, p4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const v2, 0x7f0e0817

    invoke-direct {p0, p4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-static {v0, p1, p0, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;->access$updateBackground(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    invoke-static {v0, p1, p0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;->access$setContentDescription(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    invoke-static {v0, p1, p0, v1, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;->access$setClickEvent(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    invoke-virtual {p2, p3, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    const-string p0, "7500"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SearchWidgetProvider"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v2, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->canShowNewWidget:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[onReceive] isNewWidget: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SearchWidgetProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "home"

    invoke-static {v0, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    if-eqz v2, :cond_4

    invoke-super {p0, p1, p2}, LR1/n;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p0, "android.intent.action.LOCALE_CHANGED"

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Delete the widget id: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->removeNewSearchWidgetPreferences(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;->updateAllWidgetViews(Landroid/content/Context;)V

    return-void

    :cond_4
    invoke-super {p0, p1, p2}, LR1/n;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    if-eqz v1, :cond_6

    sget-object p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;->updateWidgetView(Landroid/content/Context;I)V

    :cond_6
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/appwidget/AppWidgetManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetManager"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetIds"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->canShowNewWidget:Z

    const-string v1, "[onUpdate] isNewWidget: "

    const-string v2, "SearchWidgetProvider"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->restoreUserSettingsFromOldWidget([I)V

    invoke-virtual {v1, p2, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->restoreUserSettingsBySmartSwitchWithWidgetIds(Landroid/appwidget/AppWidgetManager;[I)V

    if-eqz v0, :cond_1

    invoke-virtual {v1, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->updatePreferencesForNewWidget([I)V

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p3, v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setIsNewSearchWidgetAdded(IZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->removeMatchDarkMode(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lz1/q0;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;

    invoke-static {p0, p1, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;->access$updateWidgetViews(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;Landroid/content/Context;[I)V

    return-void
.end method
