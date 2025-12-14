.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$Companion;,
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001b\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u0081\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0081\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0006J\u000f\u0010\u0019\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0006J!\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\u00112\u0006\u0010!\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0006J\u000f\u0010%\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0006J\u000f\u0010&\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0006J\u000f\u0010\'\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0006J\u000f\u0010(\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008(\u0010\u0006J\u000f\u0010)\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0006J!\u0010,\u001a\u0004\u0018\u00010\r2\u0006\u0010*\u001a\u00020\u001a2\u0006\u0010+\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008.\u0010\u0006J\u000f\u0010/\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008/\u0010\u0006J\u000f\u00100\u001a\u00020 H\u0002\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u00082\u0010\u0006J\u0017\u00104\u001a\u00020\u00112\u0006\u00103\u001a\u00020 H\u0002\u00a2\u0006\u0004\u00084\u0010#J\u000f\u00105\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u00085\u0010\u0006J\u000f\u00106\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u00086\u0010\u0006J\u000f\u00107\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u00087\u0010\u0006J\u000f\u00108\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u00088\u0010\u0006J\u000f\u00109\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u00089\u0010\u0006J\u000f\u0010:\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008:\u0010\u0006J\u000f\u0010;\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008;\u0010\u0006J\u0017\u0010>\u001a\u00020\u00112\u0006\u0010=\u001a\u00020<H\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u0017\u0010A\u001a\u00020\u00112\u0006\u0010@\u001a\u00020<H\u0002\u00a2\u0006\u0004\u0008A\u0010?J\u001f\u0010E\u001a\u00020\u00112\u0006\u0010B\u001a\u00020<2\u0006\u0010D\u001a\u00020CH\u0002\u00a2\u0006\u0004\u0008E\u0010FJ\u0017\u0010H\u001a\u00020\u00112\u0006\u0010G\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008H\u0010IJ\u0017\u0010L\u001a\u00020\u00112\u0006\u0010K\u001a\u00020JH\u0002\u00a2\u0006\u0004\u0008L\u0010MJ\u0017\u0010O\u001a\u00020\u00112\u0006\u0010N\u001a\u00020<H\u0002\u00a2\u0006\u0004\u0008O\u0010?J\u0017\u0010P\u001a\u00020\u00112\u0006\u0010K\u001a\u00020JH\u0002\u00a2\u0006\u0004\u0008P\u0010MJ\u0017\u0010Q\u001a\u00020\u00112\u0006\u0010K\u001a\u00020JH\u0002\u00a2\u0006\u0004\u0008Q\u0010MJ\u0017\u0010R\u001a\u00020\u00112\u0006\u0010K\u001a\u00020JH\u0002\u00a2\u0006\u0004\u0008R\u0010MJ\u0017\u0010U\u001a\u00020\u00112\u0006\u0010T\u001a\u00020SH\u0002\u00a2\u0006\u0004\u0008U\u0010VJ\u0017\u0010X\u001a\u00020\u00112\u0006\u0010W\u001a\u00020<H\u0002\u00a2\u0006\u0004\u0008X\u0010?R\u0016\u0010Z\u001a\u00020Y8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0016\u0010]\u001a\u00020\\8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0016\u0010`\u001a\u00020_8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u001b\u0010g\u001a\u00020b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008c\u0010d\u001a\u0004\u0008e\u0010fR\u0016\u0010i\u001a\u00020h8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0016\u0010l\u001a\u00020k8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0016\u0010n\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010oR\u0016\u0010p\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0016\u0010r\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010oR\u0016\u0010s\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010oR\u0016\u0010t\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010oR#\u0010z\u001a\n v*\u0004\u0018\u00010u0u8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008w\u0010d\u001a\u0004\u0008x\u0010yR\u0016\u0010{\u001a\u00020C8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u0016\u0010}\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010qR\u0017\u0010\u007f\u001a\u00020~8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001\u00a8\u0006\u0082\u0001"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;",
        "Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;",
        "Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "Ldb/r;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onDestroy",
        "onResume",
        "",
        "propertyType",
        "",
        "propertyValue",
        "onChanged",
        "(ILjava/lang/Object;)V",
        "",
        "pressed",
        "setCtrlKeyPressed",
        "(Z)V",
        "onCtrlAndAKeyPressed",
        "onCtrlAndMKeyPressed",
        "onBackPressed",
        "setupDeviceList",
        "setLongPressMultiSelectionListener",
        "setSPenMultiSelectionListener",
        "x",
        "y",
        "getChildAt",
        "(II)Landroid/view/View;",
        "initNoShortcutsButton",
        "handleUIUpdate",
        "isQuickAccessOptionDisabled",
        "()Z",
        "updateSyncView",
        "allowAddMenuProvider",
        "addMenuProvider",
        "showAddAccountView",
        "showSyncingView",
        "showInternetSyncOffView",
        "showMasterSyncOffView",
        "showQuickAccessOptionOffView",
        "showNoItemsView",
        "hideNoItemsView",
        "",
        "titleText",
        "updateNoShortcutsTitleText",
        "(Ljava/lang/String;)V",
        "subtitleText",
        "updateNoShortcutsSubtitleText",
        "buttonText",
        "Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;",
        "state",
        "updateNoShortcutsButton",
        "(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;)V",
        "viewState",
        "updateProgressbarProperty",
        "(I)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;",
        "syncFragmentItem",
        "announceItemCheckedInformation",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V",
        "noShortcutsButtonText",
        "announceNoShortcutsButtonExecution",
        "showUrlDimmedInformation",
        "showItemCheckedInformation",
        "setBottomBarState",
        "Landroid/widget/TextView;",
        "buttonTextView",
        "setBottomBarButtonTextStyle",
        "(Landroid/widget/TextView;)V",
        "detail",
        "sendSAEventLog",
        "Landroid/widget/Button;",
        "noShortcutsButtonView",
        "Landroid/widget/Button;",
        "Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;",
        "controlBar",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;",
        "viewModel$delegate",
        "Ldb/f;",
        "getViewModel",
        "()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;",
        "viewModel",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;",
        "adapter",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;",
        "Lf1/p;",
        "menuProvider",
        "Lf1/p;",
        "isMenuProviderAdded",
        "Z",
        "currentDisabledUrlCount",
        "I",
        "isEmptyList",
        "shouldUpdateUI",
        "listViewAllowedToShow",
        "Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;",
        "kotlin.jvm.PlatformType",
        "syncStateNotifier$delegate",
        "getSyncStateNotifier",
        "()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;",
        "syncStateNotifier",
        "noShortcutsButtonState",
        "Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;",
        "accountType",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;",
        "noShortcutsButtonLayoutBinding",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private accountType:I

.field private adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;

.field private binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

.field private controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;

.field private currentDisabledUrlCount:I

.field private isEmptyList:Z

.field private isMenuProviderAdded:Z

.field private listViewAllowedToShow:Z

.field private menuProvider:Lf1/p;

.field private noShortcutsButtonLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;

.field private noShortcutsButtonState:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

.field private noShortcutsButtonView:Landroid/widget/Button;

.field private shouldUpdateUI:Z

.field private final syncStateNotifier$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v2, Ldb/h;->NONE:Ldb/h;

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$2;-><init>(Lsb/a;)V

    invoke-static {v2, v3}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object v1

    sget-object v2, Ltb/x;->a:Ltb/y;

    const-class v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    invoke-virtual {v2, v3}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$3;-><init>(Ldb/f;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$4;-><init>(Lsb/a;Ldb/f;)V

    new-instance v1, LA7/c;

    invoke-direct {v1, v2, v3, v0, v4}, LA7/c;-><init>(LAb/c;Lsb/a;Lsb/a;Lsb/a;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->viewModel$delegate:Ldb/f;

    new-instance v0, LB9/b;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, LB9/b;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->syncStateNotifier$delegate:Ldb/f;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->accountType:I

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    return-object p0
.end method

.method public static final synthetic access$getChildAt(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;II)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final addMenuProvider(Z)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "menuProvider"

    const-string v2, "null cannot be cast to non-null type androidx.core.view.MenuHost"

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->menuProvider:Lf1/p;

    if-eqz v2, :cond_0

    invoke-interface {p1, v2}, Lf1/l;->removeMenuProvider(Lf1/p;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->isMenuProviderAdded:Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->isMenuProviderAdded:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->menuProvider:Lf1/p;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/C;->RESUMED:Landroidx/lifecycle/C;

    invoke-interface {p1, v2, v0, v1}, Lf1/l;->addMenuProvider(Lf1/p;Landroidx/lifecycle/J;Landroidx/lifecycle/C;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->isMenuProviderAdded:Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method private final announceItemCheckedInformation(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const p1, 0x7f140655

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f140801

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->getCheckedItemCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->getCheckedItemCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v2, 0x7f12005f

    invoke-virtual {p0, v2, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final announceNoShortcutsButtonExecution(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonView:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const v1, 0x7f14045c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "noShortcutsButtonView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final getChildAt(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final getSyncStateNotifier()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->syncStateNotifier$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    return-object p0
.end method

.method private final getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->viewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;ILsb/a;I)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setupDeviceList$lambda$11(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;ILsb/a;I)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final handleUIUpdate()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateSyncView()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->listViewAllowedToShow:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->triggerFragmentItemObserver()V

    :cond_0
    return-void
.end method

.method private final hideNoItemsView()V
    .locals 4

    const-string v0, "OK"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->sendSAEventLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->noShortcutsLayout:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;->noShortcutsTitleText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->noShortcutsLayout:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;->noShortcutsSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonView:Landroid/widget/Button;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string p0, "noShortcutsButtonView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setupDeviceList$lambda$15(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final initNoShortcutsButton()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonView:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, LFa/b;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v0, p0}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/l;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    const-string p0, "noShortcutsButtonLayoutBinding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "noShortcutsButtonView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private static final initNoShortcutsButton$lambda$18$lambda$17(Landroid/widget/Button;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonState:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    if-eqz p2, :cond_6

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "QuickAccessSyncFragment"

    if-eq p2, v0, :cond_5

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    const-string p2, "quick access option off"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->shouldUpdateUI:Z

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->showSetting(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const-string p2, "add account"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const-string p2, "sync cancel"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->showNoItemsView()V

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->cancelButtonClicked()V

    goto :goto_0

    :cond_3
    const-string p2, "request sync refresh"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p0, "Network not available"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->showSyncingView()V

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->refreshButtonClicked()V

    goto :goto_0

    :cond_5
    const-string p2, "turn on sync"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->turnOnSyncButtonClicked()V

    :goto_0
    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->announceNoShortcutsButtonExecution(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p0, "noShortcutsButtonState"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final initNoShortcutsButton$lambda$19(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    const-string p2, "binding"

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->noShortcutsLayout:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;->noShortcutsNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p1, p4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;

    const-string p6, "noShortcutsButtonLayoutBinding"

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    if-eq p4, p5, :cond_2

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->noShortcutsLayout:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;->noShortcutsNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw p3

    :cond_1
    invoke-static {p6}, Ltb/k;->l(Ljava/lang/String;)V

    throw p3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p6}, Ltb/k;->l(Ljava/lang/String;)V

    throw p3

    :cond_4
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw p3
.end method

.method private final isQuickAccessOptionDisabled()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isRPCSettingNewApiSupported()Z

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->isQuickAccessOptionTurnedOn()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cloud sync new api : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickAccessSyncFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Landroidx/lifecycle/v0;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->viewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Landroidx/lifecycle/v0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->onViewCreated$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->onViewCreated$lambda$9(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->onViewCreated$lambda$6(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->onViewCreated$lambda$9$lambda$7(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic o(Landroid/widget/Button;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->initNoShortcutsButton$lambda$18$lambda$17(Landroid/widget/Button;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onConfigurationChanged$lambda$10(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.sec.android.app.sbrowser.settings.SettingsActivity"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->listViewAllowedToShow:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->updateBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Z)V

    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)Ldb/r;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fragmentItem: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickAccessSyncFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->listViewAllowedToShow:Z

    sget-object v1, Ldb/r;->a:Ldb/r;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->announceItemCheckedInformation(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->setTitleBarInformation(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->showUrlDimmedInformation(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->showItemCheckedInformation(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setBottomBarState(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V

    return-object v1

    :cond_1
    const-string p0, "controlBar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onViewCreated$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;)Ldb/r;
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldb/j;

    sget-object v0, Ldb/r;->a:Ldb/r;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Ldb/j;->b:Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string v2, "sync_added_item_count"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-object v0
.end method

.method private static final onViewCreated$lambda$5(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->controlBarCheckboxClicked(Lsb/a;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final onViewCreated$lambda$5$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->announceCheckboxState()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    const-string p0, "controlBar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onViewCreated$lambda$6(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->addButtonClicked()V

    return-void
.end method

.method private static final onViewCreated$lambda$9(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncReplace:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance p1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {p1, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/P;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/P;-><init>(Landroidx/fragment/app/Fragment;I)V

    iget-object v2, p1, Lm/k;->a:Lm/h;

    iput-object v1, v2, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lm/h;->m:Z

    const v1, 0x7f140be7

    invoke-virtual {p1, v1}, Lm/k;->e(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f140be4

    goto :goto_0

    :cond_0
    const v1, 0x7f140be3

    :goto_0
    invoke-virtual {p1, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/K;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/K;-><init>(Landroidx/fragment/app/Fragment;I)V

    const p0, 0x7f140b88

    invoke-virtual {p1, p0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const p1, 0x7f1402c1

    invoke-virtual {p0, p1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->f()Lm/l;

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method private static final onViewCreated$lambda$9$lambda$7(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncReplace:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onViewCreated$lambda$9$lambda$8(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->replaceButtonClicked()V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setupDeviceList$lambda$16(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->onViewCreated$lambda$5$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->onViewCreated$lambda$9$lambda$8(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->initNoShortcutsButton$lambda$19(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private final sendSAEventLog(Ljava/lang/String;)V
    .locals 1

    const-string p0, "502"

    const-string v0, "5079"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setBottomBarButtonTextStyle(Landroid/widget/TextView;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const v0, 0x7f0804e2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p0, :cond_1

    const p0, 0x7f06023d

    goto :goto_1

    :cond_1
    const p0, 0x7f0601ff

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final setBottomBarState(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isAnyItemChecked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isMaxItemsExistingInDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isMaxItemsCheckedCrossedForAdd()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    const/4 v4, 0x0

    const-string v5, "binding"

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncAdd:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eq v6, v0, :cond_1

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isAnyItemChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isMaxItemsCheckedCrossedForReplace()Z

    move-result p1

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncReplace:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eq p1, v1, :cond_3

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_3
    return-void

    :cond_4
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4
.end method

.method private final setLongPressMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setLongPressMultiSelectionListener$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setLongPressMultiSelectionListener$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setSPenMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$setSPenMultiSelectionListener$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setupDeviceList()V
    .locals 8

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$HeaderListener;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/L;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/L;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$HeaderListener;-><init>(Lsb/p;Lsb/k;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    new-instance v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;-><init>(Lsb/k;Lsb/k;Lsb/a;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$HeaderListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter$ItemListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result v6

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getQuickAccessSyncCombinedList()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setLongPressMultiSelectionListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setSPenMultiSelectionListener()V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "adapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private static final setupDeviceList$lambda$11(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;ILsb/a;I)Ldb/r;
    .locals 1

    const-string v0, "headerViewHolderItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerCallback"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->setGroupItemListVisibility(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;ILsb/a;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final setupDeviceList$lambda$12(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;)Ldb/r;
    .locals 1

    const-string v0, "syncHeader"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->headerViewHolderCheckboxClicked(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final setupDeviceList$lambda$13(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;)Ldb/r;
    .locals 1

    const-string v0, "syncItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->itemViewHolderItemClicked(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final setupDeviceList$lambda$14(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Ljava/util/List;)Ldb/r;
    .locals 1

    const-string v0, "syncItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->itemViewHolderItemsSelected(Ljava/util/List;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final setupDeviceList$lambda$15(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setupDeviceList$lambda$16(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Ljava/util/List;)Ldb/r;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "combinedList size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickAccessSyncFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->isEmptyList:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateSyncView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncAdapter;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1, v1, v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->submitList$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method private final showAddAccountView()V
    .locals 2

    const-string v0, "Fail5"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->sendSAEventLog(Ljava/lang/String;)V

    const v0, 0x7f140f7d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsTitleText(Ljava/lang/String;)V

    const v0, 0x7f140b83

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsSubtitleText(Ljava/lang/String;)V

    const v0, 0x7f140047

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->ADD_SAMSUNG_ACCOUNT:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsButton(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;)V

    return-void
.end method

.method private final showInternetSyncOffView()V
    .locals 2

    const-string v0, "Fail3"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->sendSAEventLog(Ljava/lang/String;)V

    const v0, 0x7f14080e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsTitleText(Ljava/lang/String;)V

    const v0, 0x7f14108d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsSubtitleText(Ljava/lang/String;)V

    const v0, 0x7f140b89

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->SYNC_OFF:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsButton(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;)V

    return-void
.end method

.method private final showItemCheckedInformation(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isMaxItemsExistingInDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showMaxItemsExistingInDeviceFromSync(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isMaxItemsCheckedCrossedForReplace()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const/16 p1, 0x32

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showMaxItemsCheckedCrossedForReplaceFromSync(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isMaxItemsCheckedCrossedForAdd()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showMaxItemsCheckedCrossedForAddFromSync(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final showMasterSyncOffView()V
    .locals 2

    const-string v0, "Fail4"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->sendSAEventLog(Ljava/lang/String;)V

    const v0, 0x7f14080e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsTitleText(Ljava/lang/String;)V

    const v0, 0x7f14108e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsSubtitleText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonView:Landroid/widget/Button;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "noShortcutsButtonView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final showNoItemsView()V
    .locals 2

    const-string v0, "Fail1"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->sendSAEventLog(Ljava/lang/String;)V

    const v0, 0x7f14080e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsTitleText(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateProgressbarProperty(I)V

    const v0, 0x7f140f42

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsSubtitleText(Ljava/lang/String;)V

    const v0, 0x7f140b86

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->SYNC_REFRESH:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsButton(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;)V

    return-void
.end method

.method private final showQuickAccessOptionOffView()V
    .locals 2

    const v0, 0x7f140b4d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsTitleText(Ljava/lang/String;)V

    const-string v0, "Fail6"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->sendSAEventLog(Ljava/lang/String;)V

    const v0, 0x7f14108b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsSubtitleText(Ljava/lang/String;)V

    const v0, 0x7f140b89

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->QUICK_ACCESS_OFF:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsButton(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;)V

    return-void
.end method

.method private final showSyncingView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->noShortcutsLayout:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;->noShortcutsTitleText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->noShortcutsLayout:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;->noShortcutsSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateProgressbarProperty(I)V

    const v0, 0x7f1402c1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->SYNC_CANCEL:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateNoShortcutsButton(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;)V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final showUrlDimmedInformation(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->getDisabledUrlCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->currentDisabledUrlCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->getDisabledUrlCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->currentDisabledUrlCount:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->isAnyItemChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showUrlDimmedFromSync(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private static final syncStateNotifier_delegate$lambda$1()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic t(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->onViewCreated$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->syncStateNotifier_delegate$lambda$1()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object v0

    return-object v0
.end method

.method private final updateNoShortcutsButton(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonView:Landroid/widget/Button;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonState:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    return-void

    :cond_2
    const-string p0, "noShortcutsButtonView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateNoShortcutsSubtitleText(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->noShortcutsLayout:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;->noShortcutsSubtitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateNoShortcutsTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->noShortcutsLayout:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;->noShortcutsTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateProgressbarProperty(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->noShortcutsLayout:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;->noShortcutsSyncRefreshProgressbar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->noShortcutsLayout:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;->noShortcutsSyncingShortcutsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateSyncView()V
    .locals 10

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getMasterSyncAutomatically()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isInternetSyncTurnedOn(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->isQuickAccessOptionDisabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->isEmptyList:Z

    iget v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->accountType:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "info : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickAccessSyncFragment"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->isEmptyList:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateProgressbarProperty(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    const-string v7, "binding"

    const/4 v8, 0x0

    if-eqz v6, :cond_d

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v5

    :goto_1
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz v6, :cond_c

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncBottomBar:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    move v9, v5

    :goto_2
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz v6, :cond_b

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->noShortcutsLayout:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v6

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    iget v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->accountType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->showAddAccountView()V

    goto :goto_4

    :cond_4
    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->showMasterSyncOffView()V

    goto :goto_4

    :cond_5
    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->showInternetSyncOffView()V

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->showQuickAccessOptionOffView()V

    goto :goto_4

    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->isEmptyList:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->showNoItemsView()V

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->hideNoItemsView()V

    :goto_4
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->addMenuProvider(Z)V

    if-eqz v3, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->listViewAllowedToShow:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->setActionBar(Z)V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->listViewAllowedToShow:Z

    return-void

    :cond_a
    const-string p0, "controlBar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_b
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_c
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8

    :cond_d
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v8
.end method

.method public static synthetic v(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->onConfigurationChanged$lambda$10(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)V

    return-void
.end method

.method private static final viewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Landroidx/lifecycle/v0;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelFactory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v1, "getApplication(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelFactory;-><init>(Landroid/app/Application;)V

    return-object v0
.end method

.method public static synthetic w(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setupDeviceList$lambda$14(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setupDeviceList$lambda$13(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setupDeviceList$lambda$12(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->onViewCreated$lambda$5(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/p;->getOnBackPressedDispatcher()Landroidx/activity/A;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/A;->d()V

    return-void
.end method

.method public onChanged(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "cloud sync property type changed: propertyType = "

    const-string v0, "QuickAccessSyncFragment"

    invoke-static {p1, p2, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->accountType:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateSyncView()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->accountType:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateSyncView()V

    goto :goto_0

    :cond_0
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->handleUIUpdate()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->updateSyncView()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;

    const-string p2, "noShortcutsButtonLayoutBinding"

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;->noShortcutsButton:Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonView:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.settings.SettingsActivity"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    const v0, 0x7f0b01bd

    invoke-virtual {p1, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->noShortcutsButtonLayoutBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncNoShortcutsButtonLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p3

    :cond_1
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw p3

    :cond_2
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw p3
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->listViewAllowedToShow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->onSelectAllItems()V

    return-void

    :cond_1
    const-string p0, "controlBar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onCtrlAndMKeyPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->isMenuProviderAdded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->openOptionsMenu()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getSyncStateNotifier()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->unregisterSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const-string p0, "QuickAccessSyncFragment"

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "QuickAccessSyncFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.sec.android.app.sbrowser.settings.SettingsActivity"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->listViewAllowedToShow:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->updateBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->shouldUpdateUI:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isSyncSettingProviderApiSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->handleUIUpdate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->shouldUpdateUI:Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "view"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.settings.SettingsActivity"

    invoke-static {p2, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getSyncStateNotifier()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->getAccountSignedInInfo(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->accountType:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$onViewCreated$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$onViewCreated$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->menuProvider:Lf1/p;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->initNoShortcutsButton()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;

    const/4 p2, 0x0

    const-string v0, "controlBar"

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->setActionBar(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setupDeviceList()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getQuickAccessSyncFragmentItem()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p1, v1, v3}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getSyncMainUIEventLiveData()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p1, v1, v3}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncCheckableControlBar;->setCheckBoxClickListener(Lsb/a;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    const-string v0, "binding"

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncAdd:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/O;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/O;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncReplace:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/O;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/O;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncAddText:Landroid/widget/TextView;

    const-string v1, "syncAddText"

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setBottomBarButtonTextStyle(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncReplaceText:Landroid/widget/TextView;

    const-string v1, "syncReplaceText"

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->setBottomBarButtonTextStyle(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncAdd:Landroid/widget/LinearLayout;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncAddText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncReplace:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->syncReplaceText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_4
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_5
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_6
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_7
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public setCtrlKeyPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessSyncFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetCtrlkeyPressed(Z)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
