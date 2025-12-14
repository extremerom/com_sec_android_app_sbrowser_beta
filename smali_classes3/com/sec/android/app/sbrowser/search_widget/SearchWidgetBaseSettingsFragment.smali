.class public abstract Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008$\u0008\'\u0018\u0000 p2\u00020\u0001:\u0001pB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H$\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H$\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0007H$\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0007H$\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0007H$\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u0019\u0010\u000e\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH$\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H$\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0007H$\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0007H$\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0007H$\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0007H$\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0015H$\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0018H$\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0019\u0010 \u001a\u00020\u00072\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000cH\u0004\u00a2\u0006\u0004\u0008 \u0010\u000fJ\u0017\u0010#\u001a\u00020!2\u0006\u0010\"\u001a\u00020!H\u0004\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0003J\u0017\u0010(\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u001f\u0010.\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00082\u00103J\u0017\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u00085\u0010\u000fJ\u000f\u00106\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00086\u0010\u0003J\u000f\u00107\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00087\u0010\u0003J\u000f\u00108\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00088\u0010\u0003J\u000f\u00109\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00089\u0010\u0003J\u000f\u0010:\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008:\u0010\u0003J\u000f\u0010;\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008;\u0010\u0003J\u000f\u0010<\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008<\u0010\u0003J\u0017\u0010=\u001a\u00020!2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u0017\u0010?\u001a\u00020!2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008?\u0010>J\u000f\u0010@\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008@\u0010\u0003J\u0017\u0010A\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008A\u0010\u001eJ\u000f\u0010B\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008B\u0010\u0003R\u0016\u0010D\u001a\u00020C8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\"\u0010F\u001a\u00020\u00048\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010G\u001a\u0004\u0008F\u0010\u0006\"\u0004\u0008H\u0010IR\u0018\u0010J\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0018\u0010L\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010KR\u0016\u0010N\u001a\u00020M8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\"\u0010P\u001a\u00020!8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\"\u0010V\u001a\u00020!8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010Q\u001a\u0004\u0008W\u0010S\"\u0004\u0008X\u0010UR\"\u0010Y\u001a\u00020!8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Q\u001a\u0004\u0008Z\u0010S\"\u0004\u0008[\u0010UR\"\u0010\\\u001a\u00020!8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010Q\u001a\u0004\u0008]\u0010S\"\u0004\u0008^\u0010UR\"\u0010_\u001a\u00020\u00048\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010G\u001a\u0004\u0008`\u0010\u0006\"\u0004\u0008a\u0010IR\"\u0010b\u001a\u00020\u00048\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010G\u001a\u0004\u0008c\u0010\u0006\"\u0004\u0008d\u0010IR\"\u0010e\u001a\u00020\u00048\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010G\u001a\u0004\u0008e\u0010\u0006\"\u0004\u0008f\u0010IR\"\u0010g\u001a\u00020!8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008g\u0010Q\u001a\u0004\u0008h\u0010S\"\u0004\u0008i\u0010UR\"\u0010j\u001a\u00020!8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008j\u0010Q\u001a\u0004\u0008k\u0010S\"\u0004\u0008l\u0010UR\"\u0010m\u001a\u00020!8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008m\u0010Q\u001a\u0004\u0008n\u0010S\"\u0004\u0008o\u0010U\u00a8\u0006q"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "",
        "checkSettingChanged",
        "()Z",
        "Ldb/r;",
        "updateSettingsValues",
        "sendSALoggingOnDone",
        "sendSALoggingOnCancel",
        "initializePreferencesValues",
        "Landroid/os/Bundle;",
        "bundle",
        "inflateElements",
        "(Landroid/os/Bundle;)V",
        "setColorAsWallpaper",
        "setLayoutMargin",
        "setLayoutWidth",
        "setPreviewImage",
        "setBackgroundColor",
        "Landroidx/appcompat/widget/Toolbar;",
        "getWidgetToolbar",
        "()Landroidx/appcompat/widget/Toolbar;",
        "Landroidx/appcompat/widget/ActionMenuView;",
        "getWidgetSettingBottomNavigation",
        "()Landroidx/appcompat/widget/ActionMenuView;",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
        "savedInstanceState",
        "init",
        "",
        "dp",
        "getCellsCount",
        "(I)I",
        "onResume",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "Landroid/view/Menu;",
        "menu",
        "Landroid/view/MenuInflater;",
        "inflater",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;Landroid/view/MenuInflater;)V",
        "Landroid/view/MenuItem;",
        "item",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "outState",
        "onSaveInstanceState",
        "onDetach",
        "showSaveChangeDialog",
        "onCancelPressed",
        "onDonePressed",
        "doUpdateAppWidget",
        "restoringPreferences",
        "checkIntent",
        "calculateWidth",
        "(Landroid/os/Bundle;)I",
        "calculateHeight",
        "setActionBar",
        "setLayoutChangeListener",
        "setMenuOptionsVisibility",
        "Landroidx/activity/u;",
        "onBackPressedCallback",
        "Landroidx/activity/u;",
        "isNightModeEnabled",
        "Z",
        "setNightModeEnabled",
        "(Z)V",
        "topDoneMenu",
        "Landroid/view/MenuItem;",
        "topCancelMenu",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChangeListener",
        "Landroid/view/View$OnLayoutChangeListener;",
        "alphaValue",
        "I",
        "getAlphaValue",
        "()I",
        "setAlphaValue",
        "(I)V",
        "colorMode",
        "getColorMode",
        "setColorMode",
        "selectedId",
        "getSelectedId",
        "setSelectedId",
        "appWidgetId",
        "getAppWidgetId",
        "setAppWidgetId",
        "matchDarkMode",
        "getMatchDarkMode",
        "setMatchDarkMode",
        "showRecentSearches",
        "getShowRecentSearches",
        "setShowRecentSearches",
        "isWhiteWallPaper",
        "setWhiteWallPaper",
        "width",
        "getWidth",
        "setWidth",
        "height",
        "getHeight",
        "setHeight",
        "widthDp",
        "getWidthDp",
        "setWidthDp",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private alphaValue:I

.field private appWidgetId:I

.field private colorMode:I

.field private height:I

.field private isNightModeEnabled:Z

.field private isWhiteWallPaper:Z

.field private matchDarkMode:Z

.field private onBackPressedCallback:Landroidx/activity/u;

.field private onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private selectedId:I

.field private showRecentSearches:Z

.field private topCancelMenu:Landroid/view/MenuItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private topDoneMenu:Landroid/view/MenuItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private width:I

.field private widthDp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->selectedId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->appWidgetId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->matchDarkMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->showRecentSearches:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->width:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->height:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->widthDp:I

    return-void
.end method

.method public static final synthetic access$showSaveChangeDialog(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->showSaveChangeDialog()V

    return-void
.end method

.method private final calculateHeight(Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "semAppWidgetRowSpan"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->height:I

    if-eqz v0, :cond_0

    const-string p1, "SearchWidgetBaseSettingsFragment"

    const-string v0, "[calculateHeight] height from semAppWidgetRowSpan"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->height:I

    goto :goto_0

    :cond_0
    const-string v0, "appWidgetMinHeight"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getCellsCount(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final calculateWidth(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "semAppWidgetColumnSpan"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "appWidgetMinWidth"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->widthDp:I

    if-eqz v0, :cond_0

    const-string p0, "SearchWidgetBaseSettingsFragment"

    const-string p1, "[calculateWidth] width from semAppWidgetColumnSpan"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getCellsCount(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final checkIntent()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->appWidgetId:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->calculateWidth(Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->width:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->calculateHeight(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->height:I

    :cond_2
    :goto_0
    return-void
.end method

.method private final doUpdateAppWidget()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;->updateWidgetView(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic h(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->showSaveChangeDialog$lambda$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->showSaveChangeDialog$lambda$1(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->showSaveChangeDialog$lambda$2(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setActionBar$lambda$4$lambda$3(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private final onCancelPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->sendSALoggingOnCancel()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private final onDonePressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->updateSettingsValues()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->doUpdateAppWidget()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->sendSALoggingOnDone()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private final restoringPreferences()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBackUpAndRestoreDone()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->initializePreferencesValues()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBackUpAndRestoreDone(Z)V

    return-void
.end method

.method private final setActionBar()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getWidgetToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lm/n;

    invoke-virtual {v1, v0}, Lm/n;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    if-eqz v0, :cond_1

    const v1, 0x7f141111

    invoke-virtual {v0, v1}, Lm/b;->w(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getWidgetSettingBottomNavigation()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lm/n;

    invoke-virtual {v1}, Lm/n;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100032

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Lt/p;)V

    :cond_2
    return-void
.end method

.method private static final setActionBar$lambda$4$lambda$3(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0053

    if-eq v0, v1, :cond_0

    const v1, 0x7f0b005a

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private final setLayoutChangeListener(Landroid/content/Context;)V
    .locals 0

    new-instance p1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$setLayoutChangeListener$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$setLayoutChangeListener$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    const-string p0, "onLayoutChangeListener"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setMenuOptionsVisibility()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getWidgetSettingBottomNavigation()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->topCancelMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->topDoneMenu:Landroid/view/MenuItem;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method private final showSaveChangeDialog()V
    .locals 3

    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f140001

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v2, 0x7f1402c1

    invoke-virtual {v0, v2, v1}, Lm/k;->c(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/search_widget/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/search_widget/g;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;I)V

    const v2, 0x7f14005e

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/search_widget/g;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/search_widget/g;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;I)V

    const p0, 0x7f140dbb

    invoke-virtual {v0, p0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final showSaveChangeDialog$lambda$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showSaveChangeDialog$lambda$1(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onCancelPressed()V

    return-void
.end method

.method private static final showSaveChangeDialog$lambda$2(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onDonePressed()V

    return-void
.end method


# virtual methods
.method public abstract checkSettingChanged()Z
.end method

.method public final getAlphaValue()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->alphaValue:I

    return p0
.end method

.method public final getAppWidgetId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->appWidgetId:I

    return p0
.end method

.method public final getCellsCount(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1e

    div-int/lit8 p1, p1, 0x46

    return p1
.end method

.method public final getColorMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->colorMode:I

    return p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->height:I

    return p0
.end method

.method public final getMatchDarkMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->matchDarkMode:Z

    return p0
.end method

.method public final getSelectedId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->selectedId:I

    return p0
.end method

.method public final getShowRecentSearches()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->showRecentSearches:Z

    return p0
.end method

.method public abstract getWidgetSettingBottomNavigation()Landroidx/appcompat/widget/ActionMenuView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getWidgetToolbar()Landroidx/appcompat/widget/Toolbar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->width:I

    return p0
.end method

.method public final getWidthDp()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->widthDp:I

    return p0
.end method

.method public abstract inflateElements(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final init(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemNightTheme(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->isNightModeEnabled:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->restoringPreferences()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->checkIntent()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->inflateElements(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setActionBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setColorAsWallpaper()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const-string v0, "requireActivity(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setLayoutChangeListener(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->doUpdateAppWidget()V

    return-void
.end method

.method public abstract initializePreferencesValues()V
.end method

.method public final isNightModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->isNightModeEnabled:Z

    return p0
.end method

.method public final isWhiteWallPaper()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->isWhiteWallPaper:Z

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$onAttach$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$onAttach$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onBackPressedCallback:Landroidx/activity/u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/p;->getOnBackPressedDispatcher()Landroidx/activity/A;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onBackPressedCallback:Landroidx/activity/u;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0, v0}, Landroidx/activity/A;->a(Landroidx/lifecycle/J;Landroidx/activity/u;)V

    return-void

    :cond_0
    const-string p0, "onBackPressedCallback"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setMenuOptionsVisibility()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f100032

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b0053

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->topCancelMenu:Landroid/view/MenuItem;

    const p2, 0x7f0b005a

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->topDoneMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setMenuOptionsVisibility()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onBackPressedCallback:Landroidx/activity/u;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/u;->remove()V

    return-void

    :cond_0
    const-string p0, "onBackPressedCallback"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0053

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b005a

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onDonePressed()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onCancelPressed()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->restoringPreferences()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setBackgroundColor()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setPreviewImage()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarVisible(Landroid/content/Context;Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "colorMode"

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->colorMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "alphaValue"

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->alphaValue:I

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public abstract sendSALoggingOnCancel()V
.end method

.method public abstract sendSALoggingOnDone()V
.end method

.method public final setAlphaValue(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->alphaValue:I

    return-void
.end method

.method public abstract setBackgroundColor()V
.end method

.method public abstract setColorAsWallpaper()V
.end method

.method public final setColorMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->colorMode:I

    return-void
.end method

.method public abstract setLayoutMargin()V
.end method

.method public abstract setLayoutWidth()V
.end method

.method public abstract setPreviewImage()V
.end method

.method public final setSelectedId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->selectedId:I

    return-void
.end method

.method public final setShowRecentSearches(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->showRecentSearches:Z

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->width:I

    return-void
.end method

.method public final setWidthDp(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->widthDp:I

    return-void
.end method

.method public abstract updateSettingsValues()V
.end method
