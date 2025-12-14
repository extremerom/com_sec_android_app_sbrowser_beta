.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;
.super Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 N2\u00020\u00012\u00020\u0002:\u0001NB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0012H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u0014J+\u0010#\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008%\u0010\u0004J\u0019\u0010\'\u001a\u00020\u000c2\u0008\u0010&\u001a\u0004\u0018\u00010 H\u0014\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008)\u0010\u0004J\u000f\u0010*\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008*\u0010\u0004J\u000f\u0010+\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008+\u0010\u0004J\u000f\u0010-\u001a\u00020,H\u0014\u00a2\u0006\u0004\u0008-\u0010.J\u0011\u00100\u001a\u0004\u0018\u00010/H\u0014\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u00082\u0010\u0004J\u0017\u00104\u001a\u00020\u000c2\u0006\u00103\u001a\u00020 H\u0016\u00a2\u0006\u0004\u00084\u0010(J\u001f\u00108\u001a\u00020\u000c2\u0006\u00106\u001a\u0002052\u0006\u00107\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u00088\u00109J\u000f\u0010:\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008:\u0010\u0004J\u000f\u0010;\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008;\u0010\u0004J\u000f\u0010<\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008<\u0010\u0004J\u000f\u0010=\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008=\u0010\u0004J\u000f\u0010>\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008>\u0010\u0004R\u0018\u0010@\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0016\u0010C\u001a\u00020B8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0014\u0010F\u001a\u00020E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0014\u0010I\u001a\u00020H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0014\u0010M\u001a\u00020?8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010L\u00a8\u0006O"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;",
        "Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "<init>",
        "()V",
        "",
        "convertBackgroundColorToString",
        "()Ljava/lang/String;",
        "",
        "progress",
        "getTransparencyStateDescriptionFromProgress",
        "(I)Ljava/lang/String;",
        "Ldb/r;",
        "updatePreviewHeightWidth",
        "updateWidgetPreview",
        "transparency",
        "applyBlurBackground",
        "(I)V",
        "",
        "shouldShowDarkWidgetPreview",
        "()Z",
        "LM1/b;",
        "type",
        "getNewWidgetBackground-L2j3NV4",
        "(I)I",
        "getNewWidgetBackground",
        "updateSeekBarProgress",
        "checkSettingChanged",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "initializePreferencesValues",
        "bundle",
        "inflateElements",
        "(Landroid/os/Bundle;)V",
        "setPreviewImage",
        "setLayoutMargin",
        "setLayoutWidth",
        "Landroidx/appcompat/widget/Toolbar;",
        "getWidgetToolbar",
        "()Landroidx/appcompat/widget/Toolbar;",
        "Landroidx/appcompat/widget/ActionMenuView;",
        "getWidgetSettingBottomNavigation",
        "()Landroidx/appcompat/widget/ActionMenuView;",
        "setColorAsWallpaper",
        "outState",
        "onSaveInstanceState",
        "Landroid/widget/CompoundButton;",
        "compoundButton",
        "isChecked",
        "onCheckedChanged",
        "(Landroid/widget/CompoundButton;Z)V",
        "setBackgroundColor",
        "updateSettingsValues",
        "sendSALoggingOnCancel",
        "sendSALoggingOnDone",
        "onDestroyView",
        "Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;",
        "bindingNullable",
        "Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;",
        "Landroid/widget/FrameLayout;",
        "previewBlurBg",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnClickListener;",
        "radioButtonClickListener",
        "Landroid/view/View$OnClickListener;",
        "Lt/X0;",
        "seekBarChangeListener",
        "Lt/X0;",
        "getBinding",
        "()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private bindingNullable:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private previewBlurBg:Landroid/widget/FrameLayout;

.field private final radioButtonClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final seekBarChangeListener:Lt/X0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->radioButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$seekBarChangeListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$seekBarChangeListener$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->seekBarChangeListener:Lt/X0;

    return-void
.end method

.method public static final synthetic access$getTransparencyStateDescriptionFromProgress(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getTransparencyStateDescriptionFromProgress(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final applyBlurBackground(I)V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isLowMemoryOneUI7Device(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "previewBlurBg"

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->previewBlurBg:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_1
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f071794

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->previewBlurBg:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->shouldShowDarkWidgetPreview()Z

    move-result v10

    const/4 v4, -0x1

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-static/range {v3 .. v10}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurUiMediumUltraThin(Landroid/view/View;IFFFFIZ)Z

    return-void

    :cond_3
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method private final convertBackgroundColorToString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getColorMode()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "MatchSetting"

    goto :goto_0

    :cond_0
    const-string p0, "Dark"

    goto :goto_0

    :cond_1
    const-string p0, "Light"

    :goto_0
    return-object p0
.end method

.method private final getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->bindingNullable:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getNewWidgetBackground-L2j3NV4(I)I
    .locals 7

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getColorMode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getWidgetBackgroundDrawable-qK15sPk$default(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;IIZIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final getTransparencyStateDescriptionFromProgress(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getTransparencyFromProgress(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1401d9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->radioButtonClickListener$lambda$0(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final radioButtonClickListener$lambda$0(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b096c

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0965

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0969

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->setBackgroundColor()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->setPreviewImage()V

    :cond_1
    const-string p1, "7530"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->convertBackgroundColorToString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "752"

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final shouldShowDarkWidgetPreview()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->isNightModeEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getColorMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getColorMode()I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private final updatePreviewHeightWidth()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->smallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->smallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v2, 0x7f070faa

    goto :goto_0

    :cond_0
    const v2, 0x7f070fab

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070fa8

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method private final updateSeekBarProgress()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    sget-object v1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAlphaValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getProgressFromTransparency(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lt/J0;->setProgress(I)V

    return-void
.end method

.method private final updateWidgetPreview()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAlphaValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->applyBlurBackground(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->smallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->smallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;->backgroundImage:Landroid/widget/ImageView;

    sget v2, LM1/b;->b:I

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getNewWidgetBackground-L2j3NV4(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->smallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->wideSmallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayout80Binding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayout80Binding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->wideSmallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayout80Binding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayout80Binding;->backgroundImage:Landroid/widget/ImageView;

    sget v2, LM1/b;->b:I

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getNewWidgetBackground-L2j3NV4(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->wideSmallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayout80Binding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayout80Binding;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkSettingChanged()Z
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getColorMode(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getColorMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getTransparency(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAlphaValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSaveRecentSearches()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getShowRecentSearches()Z

    move-result p0

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

    const-string v1, "SearchWidgetNewSettingsFragment"

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public getWidgetSettingBottomNavigation()Landroidx/appcompat/widget/ActionMenuView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->widgetSettingBottomNavigation:Landroidx/appcompat/widget/ActionMenuView;

    return-object p0
.end method

.method public getWidgetToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetToolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v0, "searchWidgetToolbar"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public inflateElements(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, " ////// "

    const-string v1, "SearchWidgetNewSettingsFragment"

    const/4 v2, 0x0

    const-string v3, "/"

    if-eqz p1, :cond_0

    const-string v4, "colorMode"

    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setColorMode(I)V

    sget-object v4, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSearchWidgetDefaultTransparency()I

    move-result v4

    const-string v5, "alphaValue"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setAlphaValue(I)V

    const-string v4, "showRecentSearches"

    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setShowRecentSearches(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getColorMode()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAlphaValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getMatchDarkMode()Z

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getShowRecentSearches()Z

    move-result v7

    const-string v8, "inflateElements savedInstanceState:: "

    invoke-static {p1, v4, v8, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getColorMode(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setColorMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getTransparency(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setAlphaValue(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSaveRecentSearches()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setShowRecentSearches(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getColorMode()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAlphaValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getMatchDarkMode()Z

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getShowRecentSearches()Z

    move-result v7

    const-string v8, "inflateElements get null"

    invoke-static {p1, v4, v8, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f060e08

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->setPreviewImage()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->backgroundColorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1401d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14058d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ", "

    invoke-static {v0, v4, v3}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->isWhiteWallPaper()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f060e0e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f060e0f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const v3, 0x7f0807fc

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lt/J0;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "Unable to set progress tint."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->updateSeekBarProgress()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->isNightModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetBackgroundColorContainer:Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    const-string v0, "searchWidgetBackgroundColorContainer"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->widgetSwitchContainer:Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    const-string v0, "widgetSwitchContainer"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->recentSearchesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const-string v0, "recentSearchesSwitch"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getShowRecentSearches()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->radioWhite:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->radioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->radioBlack:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->radioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->radioMatchPhoneSettings:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->radioButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->seekBarChangeListener:Lt/X0;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Lt/X0;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->radioMatchPhoneSettings:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1406da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Lt/J0;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getTransparencyStateDescriptionFromProgress(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    new-instance v0, Lf1/J;

    const/16 v4, 0x40

    const/16 v5, 0x1e

    const v2, 0x7f0b0d24

    const-class v3, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lf1/J;-><init>(ILjava/lang/Class;III)V

    invoke-virtual {v0, p1, p0}, Lf1/L;->g(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public initializePreferencesValues()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getTransparency(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setAlphaValue(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getColorMode(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setColorMode(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->getSaveRecentSearches()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setShowRecentSearches(Z)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1    # Landroid/widget/CompoundButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "compoundButton"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setShowRecentSearches(Z)V

    if-eqz p2, :cond_0

    const-string p0, "On"

    goto :goto_0

    :cond_0
    const-string p0, "Off"

    :goto_0
    const-string p1, "752"

    const-string p2, "7533"

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    const v0, 0x7f0e0819

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/k;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->bindingNullable:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->init(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->bindingNullable:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->recentSearchesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    const-string v0, "showRecentSearches"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public sendSALoggingOnCancel()V
    .locals 1

    const-string p0, "752"

    const-string v0, "7534"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendSALoggingOnDone()V
    .locals 2

    const-string v0, "7530"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->convertBackgroundColorToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAlphaValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "7532"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getShowRecentSearches()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "On"

    goto :goto_0

    :cond_0
    const-string p0, "Off"

    :goto_0
    const-string v0, "7533"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "752"

    const-string v0, "7535"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->radiogroupColor:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setSelectedId(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getSelectedId()I

    move-result v0

    const v1, 0x7f0b0965

    if-eq v0, v1, :cond_1

    const v1, 0x7f0b096c

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setColorMode(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->opacitySeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1}, Lt/J0;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getTransparencyFromProgress(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setAlphaValue(I)V

    return-void
.end method

.method public setColorAsWallpaper()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->updateSeekBarProgress()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getColorMode()I

    move-result v0

    const-string v1, "setColorAsWallpaper "

    const-string v2, "SearchWidgetNewSettingsFragment"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->radiogroupColor:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getColorMode()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const p0, 0x7f0b0969

    goto :goto_0

    :cond_0
    const p0, 0x7f0b0965

    goto :goto_0

    :cond_1
    const p0, 0x7f0b096c

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public setLayoutMargin()V
    .locals 8

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

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isWidgetTabletLayoutRequired(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3dbd70a4    # 0.0925f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isMainScreenFoldDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070fa7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->updateLayoutMargin(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetSettingStartView:Landroid/view/View;

    const-string v4, "searchWidgetSettingStartView"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetSettingEndView:Landroid/view/View;

    const-string v5, "searchWidgetSettingEndView"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isMainScreenFoldDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetScroller:Landroid/widget/ScrollView;

    invoke-virtual {v6, v0, v1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->widgetSettingsBottomContainerRoundedLayout:Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v6, v7}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6, v0, v1, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->widgetSettingsBottomContainerRoundedLayout:Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetPreviewContainer:Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070fbf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetScroller:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_2
    return-void
.end method

.method public setLayoutWidth()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->layoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070fa7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetPreviewLayout:Landroid/widget/RelativeLayout;

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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetPreviewLayout:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->widgetSettingContentLayout:Landroid/widget/FrameLayout;

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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->widgetSettingContentLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public setPreviewImage()V
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result v1

    sget v2, LM1/b;->b:I

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const-string v2, "getInstance(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "getAppWidgetOptions(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bumptech/glide/c;->b(Landroid/os/Bundle;)I

    move-result v0

    invoke-static {v0}, LM1/b;->d(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from options"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GWT:AppWidgetManager"

    invoke-static {v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, LM1/b;->b(II)Z

    move-result v5

    const/4 v6, 0x4

    const/16 v7, 0x8

    if-eqz v5, :cond_1

    invoke-static {v6}, LM1/b;->d(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") default="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v2}, LM1/b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v6

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getHeight()I

    move-result v3

    invoke-static {v0}, LM1/b;->d(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[setPreviewImage] width = "

    const-string v8, " height = "

    const-string v9, " appWidgetSize = "

    invoke-static {v1, v3, v5, v8, v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SearchWidgetNewSettingsFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getWidthDp()I

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setWidthDp(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getWidthDp()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getCellsCount(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setWidth(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->smallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewSmallLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v0, v3}, LM1/b;->b(II)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->wideSmallLayout:Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayout80Binding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetPreviewWideSmallLayout80Binding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v6}, LM1/b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v7

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f97

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f96

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetPreviewContainer:Lcom/sec/android/app/sbrowser/common/widget/RoundedCornerLinearLayout;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->getBinding()Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetNewSettingsFragmentBinding;->searchWidgetPreviewBlurBg:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->previewBlurBg:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->updatePreviewHeightWidth()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->updateWidgetPreview()V

    return-void
.end method

.method public updateSettingsValues()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getColorMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setColorMode(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAlphaValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setTransparency(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getShowRecentSearches()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsPreferenceManager;->setSaveRecentSearches(Z)V

    return-void
.end method
