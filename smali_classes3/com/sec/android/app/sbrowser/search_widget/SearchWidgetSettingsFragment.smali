.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0013\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 }2\u00020\u00012\u00020\u0002:\u0001}B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ+\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u0017\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001f\u0010$\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u000b\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010(\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0004J\u000f\u0010+\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008+\u0010\u0004J\u000f\u0010,\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008.\u0010\u0004J\u000f\u0010/\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008/\u0010\u0004J\u000f\u00100\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00080\u0010\u0004J\u000f\u00101\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00081\u0010\u0004J\u0019\u00103\u001a\u00020\u00072\u0008\u00102\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u00083\u0010\u001aJ\u000f\u00104\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00084\u0010\u0004J\u000f\u00105\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00085\u0010\u0004J\u0017\u0010;\u001a\u0002082\u0006\u00107\u001a\u000206H\u0002\u00a2\u0006\u0004\u00089\u0010:J\u0017\u0010<\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008<\u0010\tJ\u000f\u0010=\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008=\u0010\u0004J\u000f\u0010>\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008>\u0010\u0004J\u000f\u0010?\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008?\u0010\u0004J\u000f\u0010@\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008@\u0010\u0004J\u000f\u0010A\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008A\u0010\u0004J\u0017\u0010E\u001a\u00020D2\u0006\u0010C\u001a\u00020BH\u0002\u00a2\u0006\u0004\u0008E\u0010FJ\u0017\u0010G\u001a\u00020\u00072\u0006\u0010C\u001a\u00020BH\u0002\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008I\u0010\u0004J\u000f\u0010J\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008J\u0010\u0004J\u000f\u0010K\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008K\u0010\u0004J\u000f\u0010L\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008L\u0010\u0004J\u000f\u0010M\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008M\u0010\u0004J\u000f\u0010N\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008N\u0010\u0004J\u000f\u0010O\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008O\u0010\u0004J\u000f\u0010P\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008P\u0010\u0004J\u0017\u0010Q\u001a\u0002082\u0006\u00102\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008Q\u0010RJ\u0017\u0010S\u001a\u0002082\u0006\u00102\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008S\u0010RJ\u0017\u0010U\u001a\u0002082\u0006\u0010T\u001a\u000208H\u0002\u00a2\u0006\u0004\u0008U\u0010:J\u001f\u0010Y\u001a\u00020X2\u0006\u0010V\u001a\u0002082\u0006\u0010W\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008Y\u0010ZR\u0018\u0010\\\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0016\u0010^\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0018\u0010`\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0018\u0010b\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010aR\u0016\u0010d\u001a\u00020c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0016\u0010f\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0016\u0010h\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010gR\u0016\u0010i\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010gR\u0016\u0010j\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010gR\u0016\u0010k\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010_R\u0016\u0010l\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010_R\u0016\u0010m\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010_R\u0016\u0010n\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010gR\u0016\u0010o\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010gR\u0016\u0010p\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010gR\u0016\u0010r\u001a\u00020q8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0014\u0010W\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008W\u0010_R\u0014\u0010u\u001a\u00020t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0014\u0010x\u001a\u00020w8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0014\u0010|\u001a\u00020[8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010{\u00a8\u0006~"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Ldb/r;",
        "onAttach",
        "(Landroid/content/Context;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "onResume",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "outState",
        "onSaveInstanceState",
        "(Landroid/os/Bundle;)V",
        "Landroid/widget/CompoundButton;",
        "compoundButton",
        "",
        "isChecked",
        "onCheckedChanged",
        "(Landroid/widget/CompoundButton;Z)V",
        "Landroid/view/Menu;",
        "menu",
        "Landroid/view/MenuInflater;",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;Landroid/view/MenuInflater;)V",
        "Landroid/view/MenuItem;",
        "item",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "onDestroyView",
        "onDetach",
        "checkSettingChanged",
        "()Z",
        "showSaveChangeDialog",
        "restoringPreferences",
        "initializePreferencesValues",
        "checkIntent",
        "bundle",
        "inflateElements",
        "setPreviewImage",
        "setNewWidgetPreview",
        "LM1/b;",
        "type",
        "",
        "getNewWidgetBackground-L2j3NV4",
        "(I)I",
        "getNewWidgetBackground",
        "setLayoutChangeListener",
        "setLayoutMargin",
        "setLayoutWidth",
        "setColorAsWallpaper",
        "setActionBar",
        "updateSeekBarProgress",
        "Landroid/widget/TextView;",
        "textView",
        "",
        "limitFontScale",
        "(Landroid/widget/TextView;)F",
        "limitFontLarge",
        "(Landroid/widget/TextView;)V",
        "setBottomGroupColor",
        "setBackgroundColor",
        "setMenuOptionsVisibility",
        "onCancelPressed",
        "onDonePressed",
        "updateSettingPreferenceAppWidget",
        "updateSettingsValues",
        "doUpdateAppWidget",
        "calculateWidth",
        "(Landroid/os/Bundle;)I",
        "calculateHeight",
        "dp",
        "getCellsCount",
        "transparency",
        "canShowNewWidget",
        "",
        "getCurrentTransparentText",
        "(IZ)Ljava/lang/String;",
        "Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;",
        "bindingNullable",
        "Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;",
        "isNightModeEnabled",
        "Z",
        "topDoneMenu",
        "Landroid/view/MenuItem;",
        "topCancelMenu",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChangeListener",
        "Landroid/view/View$OnLayoutChangeListener;",
        "alphaValue",
        "I",
        "colorMode",
        "selectedId",
        "appWidgetId",
        "matchDarkMode",
        "showRecentSearches",
        "isWhiteWallPaper",
        "width",
        "height",
        "widthDp",
        "Landroidx/activity/u;",
        "onBackPressedCallback",
        "Landroidx/activity/u;",
        "Landroid/view/View$OnClickListener;",
        "radioButtonClickListener",
        "Landroid/view/View$OnClickListener;",
        "Lt/X0;",
        "seekBarChangeListener",
        "Lt/X0;",
        "getBinding",
        "()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;",
        "binding",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private alphaValue:I

.field private appWidgetId:I

.field private bindingNullable:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final canShowNewWidget:Z

.field private colorMode:I

.field private height:I

.field private isNightModeEnabled:Z

.field private isWhiteWallPaper:Z

.field private matchDarkMode:Z

.field private onBackPressedCallback:Landroidx/activity/u;

.field private onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final radioButtonClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final seekBarChangeListener:Lt/X0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->selectedId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showRecentSearches:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->width:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->height:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->widthDp:I

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v2, 0x11170

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->canShowNewWidget:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->radioButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->seekBarChangeListener:Lt/X0;

    return-void
.end method

.method public static final synthetic access$checkSettingChanged(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->checkSettingChanged()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAlphaValue$p(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    return p0
.end method

.method public static final synthetic access$getBinding(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCanShowNewWidget$p(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->canShowNewWidget:Z

    return p0
.end method

.method public static final synthetic access$getCurrentTransparentText(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;IZ)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getCurrentTransparentText(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAlphaValue$p(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    return-void
.end method

.method public static final synthetic access$setBackgroundColor(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setBackgroundColor()V

    return-void
.end method

.method public static final synthetic access$setLayoutMargin(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setLayoutMargin()V

    return-void
.end method

.method public static final synthetic access$setLayoutWidth(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setLayoutWidth()V

    return-void
.end method

.method public static final synthetic access$setPreviewImage(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setPreviewImage()V

    return-void
.end method

.method public static final synthetic access$showSaveChangeDialog(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showSaveChangeDialog()V

    return-void
.end method

.method private final calculateHeight(Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "semAppWidgetRowSpan"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->height:I

    if-eqz v0, :cond_0

    const-string p1, "SearchWidgetSettingsFragment"

    const-string v0, "[calculateHeight] height from semAppWidgetRowSpan"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->height:I

    goto :goto_0

    :cond_0
    const-string v0, "appWidgetMinHeight"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getCellsCount(I)I

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

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->widthDp:I

    if-eqz v0, :cond_0

    const-string p0, "SearchWidgetSettingsFragment"

    const-string p1, "[calculateWidth] width from semAppWidgetColumnSpan"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getCellsCount(I)I

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

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->calculateWidth(Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->width:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->calculateHeight(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->height:I

    :cond_2
    :goto_0
    return-void
.end method

.method private final checkSettingChanged()Z
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getColorMode(I)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getTransparency(I)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getMatchDarkMode(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSaveRecentSearches()Z

    move-result v0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showRecentSearches:Z

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string v0, "setting changed = "

    const-string v1, "SearchWidgetSettingsFragment"

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private final doUpdateAppWidget()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

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

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;->updateWidgetView(Landroid/content/Context;I)V

    return-void
.end method

.method private final getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->bindingNullable:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getCellsCount(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1e

    div-int/lit8 p1, p1, 0x46

    return p1
.end method

.method private final getCurrentTransparentText(IZ)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1401d8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 p1, p1, 0x64

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getNewWidgetBackground-L2j3NV4(I)I
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getWidgetBackgroundDrawable-qK15sPk(IIZI)I

    move-result p0

    return p0
.end method

.method public static synthetic h(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showSaveChangeDialog$lambda$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->radioButtonClickListener$lambda$0(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method private final inflateElements(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, " ////// "

    const-string v1, "SearchWidgetSettingsFragment"

    const-string v2, "/"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v4, "colorMode"

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    const-string v4, "alphaValue"

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    const-string v4, "matchDarkMode"

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    const-string v4, "showRecentSearches"

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showRecentSearches:Z

    iget v4, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    const-string v8, "inflateElements savedInstanceState:: "

    invoke-static {v4, v5, v8, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    iget v4, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getColorMode(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getTransparency(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getMatchDarkMode(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSaveRecentSearches()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showRecentSearches:Z

    iget v4, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    const-string v8, "inflateElements get null"

    invoke-static {v4, v5, v8, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060e08

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setPreviewImage()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->backgroundColorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1401d7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f14058d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, ", "

    invoke-static {v0, v4, v2}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->radioWhite:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->radioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->radioBlack:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->radioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->seekbarPercentage:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->seekbarPercentage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->canShowNewWidget:Z

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getCurrentTransparentText(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->seekbarPercentage:Landroid/widget/TextView;

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->canShowNewWidget:Z

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getCurrentTransparentText(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->canShowNewWidget:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->seekbarPercentage:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0092

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lt/J0;->setMax(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->seekBarChangeListener:Lt/X0;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Lt/X0;)V

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->isWhiteWallPaper:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f060e0e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f060e0f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :goto_1
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "Unable to set progress tint."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->updateSeekBarProgress()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->isNightModeEnabled:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchWidgetBackgroundColorContainer:Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    const-string v1, "searchWidgetBackgroundColorContainer"

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->widgetSwitchContainer:Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    const-string v1, "widgetSwitchContainer"

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->darkmodeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "darkmodeSwitch"

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->recentSearchesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const-string v0, "recentSearchesSwitch"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showRecentSearches:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setBottomGroupColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->backgroundColorText:Landroid/widget/TextView;

    const-string v0, "backgroundColorText"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->limitFontLarge(Landroid/widget/TextView;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->radioWhite:Landroid/widget/RadioButton;

    const-string v0, "radioWhite"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->limitFontLarge(Landroid/widget/TextView;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->radioBlack:Landroid/widget/RadioButton;

    const-string v0, "radioBlack"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->limitFontLarge(Landroid/widget/TextView;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->seekbarPercentage:Landroid/widget/TextView;

    const-string v0, "seekbarPercentage"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->limitFontLarge(Landroid/widget/TextView;)V

    return-void
.end method

.method private final initializePreferencesValues()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getTransparency(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getColorMode(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getMatchDarkMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSaveRecentSearches()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showRecentSearches:Z

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setActionBar$lambda$10$lambda$9(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showSaveChangeDialog$lambda$2(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showSaveChangeDialog$lambda$3(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final limitFontLarge(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->limitFontScale(Landroid/widget/TextView;)F

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private final limitFontScale(Landroid/widget/TextView;)F
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    const v0, 0x3fa66666    # 1.3f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    div-float/2addr p1, p0

    mul-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method private final onCancelPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private final onDonePressed()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->updateSettingPreferenceAppWidget()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private static final radioButtonClickListener$lambda$0(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b096c

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0965

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setBackgroundColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setPreviewImage()V

    :cond_1
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
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->initializePreferencesValues()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBackUpAndRestoreDone(Z)V

    return-void
.end method

.method private final setActionBar()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchWidgetToolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "searchWidgetToolbar"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

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
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->widgetSettingBottomNavigation:Landroidx/appcompat/widget/ActionMenuView;

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

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Lt/p;)V

    :cond_2
    return-void
.end method

.method private static final setActionBar$lambda$10$lambda$9(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/view/MenuItem;)Z
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
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private final setBackgroundColor()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->radiogroupColor:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->selectedId:I

    const v1, 0x7f0b096c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0965

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->canShowNewWidget:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Lt/J0;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getTransparencyFromProgress(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    :cond_2
    return-void
.end method

.method private final setBottomGroupColor()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->isNightModeEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->radioWhite:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->radioBlack:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->radioWhite:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->radioBlack:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private final setColorAsWallpaper()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->updateSeekBarProgress()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->seekbarPercentage:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->canShowNewWidget:Z

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getCurrentTransparentText(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setBottomGroupColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->radiogroupColor:Landroid/widget/RadioGroup;

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    if-nez p0, :cond_0

    const p0, 0x7f0b096c

    goto :goto_0

    :cond_0
    const p0, 0x7f0b0965

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method private final setLayoutChangeListener(Landroid/content/Context;)V
    .locals 0

    new-instance p1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$setLayoutChangeListener$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$setLayoutChangeListener$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    const-string p0, "onLayoutChangeListener"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setLayoutMargin()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isWidgetTabletLayoutRequired(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dbd70a4    # 0.0925f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b5b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->updateLayoutMargin(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchWidgetSettingStartView:Landroid/view/View;

    const-string v2, "searchWidgetSettingStartView"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchWidgetSettingEndView:Landroid/view/View;

    const-string v3, "searchWidgetSettingEndView"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->canShowNewWidget:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->seekbarLayout:Landroid/widget/LinearLayout;

    const-string v1, "seekbarLayout"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070fcb

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_3
    return-void
.end method

.method private final setLayoutWidth()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->layoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b5b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchWidgetPreviewLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    float-to-double v6, v1

    mul-double/2addr v6, v4

    const-wide v4, 0x3fe028f5c28f5c29L    # 0.505

    sub-double/2addr v4, v6

    float-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchWidgetPreviewLayout:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->widgetSettingContentLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    const-wide v4, 0x3fdfae147ae147aeL    # 0.495

    float-to-double v1, v1

    sub-double/2addr v4, v1

    float-to-double v0, v0

    mul-double/2addr v4, v0

    double-to-int v0, v4

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->widgetSettingContentLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private final setMenuOptionsVisibility()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->widgetSettingBottomNavigation:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->topCancelMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->topDoneMenu:Landroid/view/MenuItem;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method private final setNewWidgetPreview()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->smallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->smallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;->backgroundImage:Landroid/widget/ImageView;

    sget v2, LM1/b;->b:I

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getNewWidgetBackground-L2j3NV4(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->smallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->wideSmallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayoutBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->wideSmallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayoutBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayoutBinding;->backgroundImage:Landroid/widget/ImageView;

    sget v2, LM1/b;->b:I

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getNewWidgetBackground-L2j3NV4(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->wideSmallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayoutBinding;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setPreviewImage()V
    .locals 12

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchWidgetPreviewBackgroundImageView:Landroid/widget/ImageView;

    const-string v1, "searchWidgetPreviewBackgroundImageView"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->width:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->height:I

    const-string v4, "[setPreviewImage] width = "

    const-string v5, " height = "

    const-string v6, "SearchWidgetSettingsFragment"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->widthDp:I

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->widthDp:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getCellsCount(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->width:I

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->canShowNewWidget:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchWidgetPreviewBackgroundParent:Landroid/widget/LinearLayout;

    const-string v7, "searchWidgetPreviewBackgroundParent"

    invoke-static {v2, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchWidgetPreview:Landroid/widget/LinearLayout;

    const-string v8, "searchWidgetPreview"

    invoke-static {v7, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v10

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchWidgetPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    iget v10, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->width:I

    if-ne v10, v4, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070f7f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->sbrowserIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchBar:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->voiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getDeviceWidth(Landroid/app/Activity;)I

    move-result v1

    int-to-float v4, v1

    const v10, 0x3dbd70a4    # 0.0925f

    mul-float/2addr v4, v10

    float-to-int v4, v4

    mul-int/2addr v4, v3

    sub-int/2addr v1, v4

    int-to-double v3, v1

    const-wide v10, 0x3feb851eb851eb85L    # 0.86

    mul-double/2addr v3, v10

    double-to-int v1, v3

    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->widthDp:I

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    int-to-double v3, v1

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v10

    double-to-int v1, v3

    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->widthDp:I

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    int-to-double v3, v1

    mul-double/2addr v3, v10

    double-to-int v1, v3

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->sbrowserIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070f9d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchBar:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->voiceButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->smallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->height:I

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->width:I

    if-ne v2, v3, :cond_5

    move v2, v6

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->wideSmallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayoutBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->height:I

    if-ne v2, v4, :cond_6

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->width:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f97

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->searchWidgetPreviewContainer:Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    invoke-virtual {v2, v6, v1, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_3
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->canShowNewWidget:Z

    if-nez v1, :cond_b

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    rsub-int/lit8 v1, v1, 0x64

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    sget-object v2, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isWhiteWallPaper(Landroid/content/Context;)Z

    move-result v2

    sget-object v3, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->isNightModeEnabled:Z

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    iget v9, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    iget v10, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    const/4 v11, 0x0

    move-object v5, v3

    move v8, v2

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getIconDrawable(ZZZIII)I

    move-result v4

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->isNightModeEnabled:Z

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    iget v9, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    iget v10, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    const/4 v11, 0x1

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getIconDrawable(ZZZIII)I

    move-result v5

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->isNightModeEnabled:Z

    const v7, 0x7f080554

    const v8, 0x7f080553

    const v9, 0x7f080563

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    if-eqz v6, :cond_7

    if-eqz v2, :cond_9

    :goto_4
    move v7, v8

    goto :goto_5

    :cond_7
    iget v6, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    if-nez v6, :cond_8

    const v9, 0x7f080562

    :cond_8
    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->sbrowserIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->voiceButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->isSearchWidgetBorderRequired(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_7

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setNewWidgetPreview()V

    :goto_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->darkmodeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

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

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v2, 0x7f1402c1

    invoke-virtual {v0, v2, v1}, Lm/k;->c(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/search_widget/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/search_widget/h;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;I)V

    const v2, 0x7f14005e

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/search_widget/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/search_widget/h;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;I)V

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

.method private static final showSaveChangeDialog$lambda$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showSaveChangeDialog$lambda$2(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->onCancelPressed()V

    return-void
.end method

.method private static final showSaveChangeDialog$lambda$3(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->onDonePressed()V

    return-void
.end method

.method private final updateSeekBarProgress()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    sget-object v1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getProgressFromTransparency(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lt/J0;->setProgress(I)V

    return-void
.end method

.method private final updateSettingPreferenceAppWidget()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->updateSettingsValues()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->doUpdateAppWidget()V

    return-void
.end method

.method private final updateSettingsValues()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setColorMode(II)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setTransparency(II)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    iget v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->appWidgetId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setMatchDarkMode(ZI)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showRecentSearches:Z

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setSaveRecentSearches(Z)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$onAttach$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$onAttach$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->onBackPressedCallback:Landroidx/activity/u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/p;->getOnBackPressedDispatcher()Landroidx/activity/A;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->onBackPressedCallback:Landroidx/activity/u;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0, v0}, Landroidx/activity/A;->a(Landroidx/lifecycle/J;Landroidx/activity/u;)V

    return-void

    :cond_0
    const-string p0, "onBackPressedCallback"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1    # Landroid/widget/CompoundButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "compoundButton"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->darkmodeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->matchDarkMode:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setBottomGroupColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setBackgroundColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setPreviewImage()V

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->showRecentSearches:Z

    :goto_0
    return-void
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setMenuOptionsVisibility()V

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

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->topCancelMenu:Landroid/view/MenuItem;

    const p2, 0x7f0b005a

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->topDoneMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setMenuOptionsVisibility()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e0820

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/k;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->bindingNullable:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemNightTheme(Landroid/content/res/Configuration;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->isNightModeEnabled:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->restoringPreferences()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->checkIntent()V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->inflateElements(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setActionBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setColorAsWallpaper()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p2

    const-string p3, "requireActivity(...)"

    invoke-static {p2, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setLayoutChangeListener(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->doUpdateAppWidget()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->bindingNullable:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->onBackPressedCallback:Landroidx/activity/u;

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
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->onDonePressed()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->onCancelPressed()V

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
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->restoringPreferences()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setBackgroundColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->setPreviewImage()V

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

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->colorMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "alphaValue"

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->alphaValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->darkmodeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const-string v1, "matchDarkMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->recentSearchesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    const-string v0, "showRecentSearches"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
