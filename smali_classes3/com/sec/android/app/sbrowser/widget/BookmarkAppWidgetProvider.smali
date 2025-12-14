.class public final Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;
.super LR1/n;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 +2\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\'\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0017J/\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020!8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008$\u0010#R\u0016\u0010%\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010*\u001a\u00020\'8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;",
        "LR1/n;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "bundle",
        "",
        "calculateWidth",
        "(Landroid/os/Bundle;)I",
        "calculateHeight",
        "dp",
        "getCellsCount",
        "(I)I",
        "Landroid/content/Context;",
        "context",
        "Landroid/appwidget/AppWidgetManager;",
        "appWidgetManager",
        "",
        "appWidgetIds",
        "Ldb/r;",
        "onUpdate",
        "(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V",
        "onEnabled",
        "(Landroid/content/Context;)V",
        "Landroid/content/Intent;",
        "intent",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "onDisabled",
        "appWidgetId",
        "newOptions",
        "onAppWidgetOptionsChanged",
        "(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V",
        "",
        "mGetColSpanKey",
        "Ljava/lang/String;",
        "mGetRowSpanKey",
        "mContext",
        "Landroid/content/Context;",
        "Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;",
        "getGlanceAppWidget",
        "()Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;",
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
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sRemoteView:Landroid/widget/RemoteViews;

.field private static sWidgetId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mGetColSpanKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mGetRowSpanKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz1/q0;-><init>()V

    const-string v0, "semAppWidgetColumnSpan"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->mGetColSpanKey:Ljava/lang/String;

    const-string v0, "semAppWidgetRowSpan"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->mGetRowSpanKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getSRemoteView$cp()Landroid/widget/RemoteViews;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->sRemoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public static final synthetic access$setSRemoteView$cp(Landroid/widget/RemoteViews;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->sRemoteView:Landroid/widget/RemoteViews;

    return-void
.end method

.method public static final synthetic access$setSWidgetId$cp(I)V
    .locals 0

    sput p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->sWidgetId:I

    return-void
.end method

.method private final calculateHeight(Landroid/os/Bundle;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->mGetRowSpanKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "appWidgetMinHeight"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->getCellsCount(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final calculateWidth(Landroid/os/Bundle;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->mGetColSpanKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "appWidgetMinWidth"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->getCellsCount(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final getCellsCount(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1e

    div-int/lit8 p1, p1, 0x46

    return p1
.end method

.method public static final previewAppWidget(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->previewAppWidget(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static final updateAllWidgetInstances(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateAllWidgetInstances(Landroid/content/Context;)V

    return-void
.end method

.method public static final updateWidget(Landroid/content/Context;I)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateWidget(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getGlanceAppWidget()Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getGlanceAppWidget()Lz1/V;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->getGlanceAppWidget()Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;

    move-result-object p0

    return-object p0
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 3
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

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->calculateWidth(Landroid/os/Bundle;)I

    move-result v0

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->calculateHeight(Landroid/os/Bundle;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "800"

    const-string v2, "7053"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lz1/q0;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    const-class p2, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->previewAppWidget(Landroid/content/Context;Ljava/lang/Class;)V

    return-void

    :cond_0
    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BookmarkAppWidgetProvider"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

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

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    const-class v1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->previewAppWidget(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
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

    invoke-super {p0, p1, p2}, LR1/n;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onReceive] isNewWidget: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BookmarkAppWidgetProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "home"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.app.sbrowser.beta.bookmark.widget.update"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateWidget(Landroid/content/Context;I)V

    :cond_2
    const-string v0, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->removeWidgetPreferences(I)V

    sget-object p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->limitWidgetSizeAndUpdate(Landroid/content/Context;IZ)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    const-class p2, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->previewAppWidget(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_4
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6
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

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onUpdate] isNewWidget: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BookmarkAppWidgetProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->restoreUserSettingsFromOldWidget$SBrowser_highendBetaGlobal64Release([I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    aget v4, p3, v2

    array-length v5, p3

    if-le v5, v3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    invoke-virtual {v1, p1, v4, v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->limitWidgetSizeAndUpdate(Landroid/content/Context;IZ)V

    const-class v4, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;

    invoke-virtual {v1, p1, v4}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->previewAppWidget(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, p1, p2, p3}, Lz1/q0;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->updatePreferences$SBrowser_highendBetaGlobal64Release([I)V

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->updatePreferencesBySmartSwitch([I)V

    :cond_1
    array-length p0, p3

    :goto_1
    if-ge v2, p0, :cond_3

    aget p2, p3, v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setIsNewWidgetAdded(IZ)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateWidget(Landroid/content/Context;I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
