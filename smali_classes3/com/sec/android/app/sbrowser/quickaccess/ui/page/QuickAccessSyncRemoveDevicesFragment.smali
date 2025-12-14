.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0006J\u0017\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0006J\u0017\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0006J\u000f\u0010\u001f\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0006J\u000f\u0010 \u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0006J!\u0010%\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020!2\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0006J!\u0010*\u001a\u0004\u0018\u00010\r2\u0006\u0010(\u001a\u00020!2\u0006\u0010)\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010.\u001a\u00020\u00112\u0006\u0010-\u001a\u00020,H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00101\u001a\u00020\u00112\u0006\u00100\u001a\u00020!H\u0002\u00a2\u0006\u0004\u00081\u00102J\u0017\u00103\u001a\u00020\u00112\u0006\u0010-\u001a\u00020,H\u0002\u00a2\u0006\u0004\u00083\u0010/J\u0017\u00106\u001a\u00020\u00112\u0006\u00105\u001a\u000204H\u0002\u00a2\u0006\u0004\u00086\u00107R\u0016\u00109\u001a\u0002088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010<\u001a\u00020;8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u001b\u0010C\u001a\u00020>8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010BR\u0016\u0010E\u001a\u00020D8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u001b\u0010K\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008H\u0010@\u001a\u0004\u0008I\u0010JR\u001b\u0010N\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010@\u001a\u0004\u0008M\u0010J\u00a8\u0006O"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;",
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
        "onResume",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onDestroy",
        "",
        "pressed",
        "setCtrlKeyPressed",
        "(Z)V",
        "onCtrlAndDKeyPressed",
        "onCtrlAndAKeyPressed",
        "onBackPressed",
        "",
        "propertyType",
        "",
        "propertyValue",
        "onChanged",
        "(ILjava/lang/Object;)V",
        "initBottomBar",
        "x",
        "y",
        "getChildAt",
        "(II)Landroid/view/View;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;",
        "syncFragmentItem",
        "announceItemCheckedInformation",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;)V",
        "deletedItemCount",
        "announceItemDeletedInformation",
        "(I)V",
        "setBottomBarState",
        "Landroid/widget/TextView;",
        "buttonTextView",
        "setBottomBarButtonTextStyle",
        "(Landroid/widget/TextView;)V",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;",
        "controlBar",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;",
        "viewModel$delegate",
        "Ldb/f;",
        "getViewModel",
        "()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;",
        "viewModel",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;",
        "adapter",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;",
        "Landroid/view/animation/Animation;",
        "slideUpAnim$delegate",
        "getSlideUpAnim",
        "()Landroid/view/animation/Animation;",
        "slideUpAnim",
        "slideDownAnim$delegate",
        "getSlideDownAnim",
        "slideDownAnim",
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


# instance fields
.field private adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;

.field private binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

.field private controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;

.field private final slideDownAnim$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final slideUpAnim$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v2, Ldb/h;->NONE:Ldb/h;

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$special$$inlined$viewModels$default$2;-><init>(Lsb/a;)V

    invoke-static {v2, v3}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object v1

    sget-object v2, Ltb/x;->a:Ltb/y;

    const-class v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    invoke-virtual {v2, v3}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$special$$inlined$viewModels$default$3;-><init>(Ldb/f;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$special$$inlined$viewModels$default$4;-><init>(Lsb/a;Ldb/f;)V

    new-instance v1, LA7/c;

    invoke-direct {v1, v2, v3, v0, v4}, LA7/c;-><init>(LAb/c;Lsb/a;Lsb/a;Lsb/a;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->viewModel$delegate:Ldb/f;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->slideUpAnim$delegate:Ldb/f;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->slideDownAnim$delegate:Ldb/f;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    return-object p0
.end method

.method public static final synthetic access$getChildAt(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;II)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final announceItemCheckedInformation(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;->getCheckedItemCount()I

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

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;->getCheckedItemCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;->getCheckedItemCount()I

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

.method private final announceItemDeletedInformation(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->syncRemoveDevicesBottomBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f14043c

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f140655

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f140653

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

.method private final getChildAt(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

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

.method private final getSlideDownAnim()Landroid/view/animation/Animation;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->slideDownAnim$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/animation/Animation;

    return-object p0
.end method

.method private final getSlideUpAnim()Landroid/view/animation/Animation;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->slideUpAnim$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/animation/Animation;

    return-object p0
.end method

.method private final getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->viewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;I)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;I)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->initBottomBar$lambda$17(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private final initBottomBar()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getSlideUpAnim()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getSlideDownAnim()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->syncRemoveDevicesBottomBar:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/l;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/l;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final initBottomBar$lambda$17(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    const-string p5, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p4, p5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p6, :cond_2

    iget-object p6, p6, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->syncRemoveDevicesBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result p6

    if-eq p5, p6, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->syncRemoveDevicesBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p3}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-static {p3}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$14(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$11(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$9(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$6$lambda$5(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$14$lambda$13(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Landroid/view/animation/Animation;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->slideDownAnim_delegate$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method private static final onConfigurationChanged$lambda$15(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.settings.SettingsActivity"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->updateBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Z)V

    return-void
.end method

.method private static final onViewCreated$lambda$11(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Ldb/r;
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->controlBarCheckboxClicked(Lsb/a;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final onViewCreated$lambda$11$lambda$10(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Ldb/r;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;->announceCheckboxState()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;->updateBackupList()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "controlBar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private static final onViewCreated$lambda$14(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->syncRemoveDevicesBottomBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance p1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1502e8

    invoke-direct {p1, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/P;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/P;-><init>(Landroidx/fragment/app/Fragment;I)V

    iget-object v2, p1, Lm/k;->a:Lm/h;

    iput-object v1, v2, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lm/h;->m:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getCheckedItemsCount()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getCheckedItemsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f12004a

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object p1

    const v1, 0x7f140b87

    invoke-virtual {p1, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/K;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/K;-><init>(Landroidx/fragment/app/Fragment;I)V

    const p0, 0x7f140bdf

    invoke-virtual {p1, p0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const p1, 0x7f1402c1

    invoke-virtual {p0, p1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->f()Lm/l;

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method private static final onViewCreated$lambda$14$lambda$12(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->syncRemoveDevicesBottomBar:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onViewCreated$lambda$14$lambda$13(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->deleteButtonClicked()V

    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;I)Ldb/r;
    .locals 2

    const-string v0, "deviceItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/T;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/T;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->viewHolderItemClicked(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;Lsb/a;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final onViewCreated$lambda$4$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)Ldb/r;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;->updateBackupListItem(I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onViewCreated$lambda$6(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Ljava/util/List;Ljava/util/List;)Ldb/r;
    .locals 3

    const-string v0, "deviceItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemPositions"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->viewHolderItemsSelected(Ljava/util/List;Lsb/a;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final onViewCreated$lambda$6$lambda$5(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Ljava/util/List;)Ldb/r;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;->updateBackupListItems(Ljava/util/List;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onViewCreated$lambda$7(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Ldb/r;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onViewCreated$lambda$8(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;)Ldb/r;
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;->getTotalItemCount()I

    move-result v0

    sget-object v1, Ldb/r;->a:Ldb/r;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->announceItemCheckedInformation(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;->setTitleBarInformation(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->setBottomBarState(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;)V

    return-object v1

    :cond_2
    const-string p0, "controlBar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final onViewCreated$lambda$9(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;)Ldb/r;
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

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object p1, p1, Ldb/j;->b:Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->announceItemDeletedInformation(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-object v0
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Landroid/view/animation/Animation;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->slideUpAnim_delegate$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$8(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Landroidx/lifecycle/v0;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->viewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Landroidx/lifecycle/v0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$7(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Ldb/r;

    move-result-object p0

    return-object p0
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

.method private final setBottomBarState(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;->isAnyItemChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->syncRemoveDevicesBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v0, :cond_1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getSlideUpAnim()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getSlideDownAnim()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;->isAllItemsChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f140434

    goto :goto_1

    :cond_2
    const p1, 0x7f140433

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->syncRemoveDevicesDeleteText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method private static final slideDownAnim_delegate$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Landroid/view/animation/Animation;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f01010d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method private static final slideUpAnim_delegate$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Landroid/view/animation/Animation;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f010118

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$14$lambda$12(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$11$lambda$10(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onConfigurationChanged$lambda$15(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)V

    return-void
.end method

.method private static final viewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)Landroidx/lifecycle/v0;
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

.method public static synthetic w(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$4$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Ljava/util/List;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->onViewCreated$lambda$6(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Ljava/util/List;Ljava/util/List;)Ldb/r;

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
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/16 p2, 0x11

    if-eq p1, p2, :cond_0

    const/16 p2, 0x12

    if-eq p1, p2, :cond_0

    const/16 p2, 0x17

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
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

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
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

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;->onSelectAllDevices()V

    return-void

    :cond_0
    const-string p0, "controlBar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->syncRemoveDevicesBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->unregisterSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.settings.SettingsActivity"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->updateBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->initBottomBar()V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.settings.SettingsActivity"

    invoke-static {p2, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;

    const-string p2, "controlBar"

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;->setCustomActionBar()V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/Q;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/Q;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/Q;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/Q;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;-><init>(Lsb/n;Lsb/n;Lsb/a;)V

    invoke-direct {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter$Listener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    const-string v1, "binding"

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->adapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesAdapter;

    if-eqz v2, :cond_6

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$4;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$5;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object p1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$6;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$onViewCreated$6;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Lib/c;)V

    const/4 v3, 0x3

    invoke-static {p1, v0, v0, v2, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getQuickAccessSyncRemoveDevicesFragmentItem()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/U;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/U;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v4, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p1, v2, v4}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->getViewModel()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getSyncMainUIEventLiveData()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/U;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/U;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v4, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p1, v2, v4}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->controlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;

    const/4 v2, 0x3

    invoke-direct {p2, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/S;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesCheckableControlBar;->setCheckBoxClickListener(Lsb/a;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->syncRemoveDevicesBottomBar:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/c;

    const/4 v2, 0x3

    invoke-direct {p2, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->syncRemoveDevicesDeleteText:Landroid/widget/TextView;

    const-string p2, "syncRemoveDevicesDeleteText"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->setBottomBarButtonTextStyle(Landroid/widget/TextView;)V

    return-void

    :cond_0
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p0, "adapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public setCtrlKeyPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessSyncRemoveDevicesFragmentBinding;->deviceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetCtrlkeyPressed(Z)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
