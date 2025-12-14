.class public final Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u001b\u0010\r\u001a\u00020\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ+\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0003R\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0018\u0010\"\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010(\u001a\u00020\'8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "",
        "newSourceGroupType",
        "Ldb/r;",
        "setSourceGroupType",
        "(Ljava/lang/String;)V",
        "message",
        "showToastMessage",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "historyItem",
        "resetCurrentClickedHistoryItem",
        "(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V",
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
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroyView",
        "Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;",
        "siLogViewModel$delegate",
        "Ldb/f;",
        "getSiLogViewModel",
        "()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;",
        "siLogViewModel",
        "currentClickedHistoryItem",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "",
        "currentHistoryItemClickCount",
        "I",
        "Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryListFragmentBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryListFragmentBinding;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private binding:Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryListFragmentBinding;

.field private currentClickedHistoryItem:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentHistoryItemClickCount:I

.field private final siLogViewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->$stable:I

    const-string v0, "SILogHistoryListFragment"

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, LJ2/L;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, LJ2/L;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v2, Ldb/h;->NONE:Ldb/h;

    new-instance v3, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$special$$inlined$viewModels$default$2;-><init>(Lsb/a;)V

    invoke-static {v2, v3}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object v1

    sget-object v2, Ltb/x;->a:Ltb/y;

    const-class v3, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    invoke-virtual {v2, v3}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$special$$inlined$viewModels$default$3;-><init>(Ldb/f;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$special$$inlined$viewModels$default$4;-><init>(Lsb/a;Ldb/f;)V

    new-instance v1, LA7/c;

    invoke-direct {v1, v2, v3, v0, v4}, LA7/c;-><init>(LAb/c;Lsb/a;Lsb/a;Lsb/a;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->siLogViewModel$delegate:Ldb/f;

    return-void
.end method

.method public static final synthetic access$getLOG_TAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setSourceGroupType(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->setSourceGroupType(Ljava/lang/String;)V

    return-void
.end method

.method private final getSiLogViewModel()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->siLogViewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Ldb/j;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->onViewCreated$lambda$3(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Ldb/j;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Landroid/view/View;Landroid/view/View;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->onViewCreated$lambda$1(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Landroid/view/View;Landroid/view/View;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Ljava/util/List;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->onViewCreated$lambda$3$lambda$2(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Ljava/util/List;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;Ldb/j;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->onViewCreated$lambda$7(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;Ldb/j;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->onViewCreated$lambda$6(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->onViewCreated$lambda$4(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;)Landroidx/lifecycle/v0;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->siLogViewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;)Landroidx/lifecycle/v0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->onViewCreated$lambda$6$lambda$5(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Landroid/view/View;Landroid/view/View;)Ldb/r;
    .locals 3

    const-string v0, "itemRecyclerView"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerIndicator"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f140501

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f14032c

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final onViewCreated$lambda$3(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Ldb/j;)Ldb/r;
    .locals 4

    const-string v0, "historyItemGroup"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p1, p1, Ldb/j;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    new-instance v1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-direct {v1, v2}, Lm/k;-><init>(Landroid/content/Context;)V

    const v2, 0x7f140f74

    invoke-virtual {v1, v2}, Lm/k;->e(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f140f73

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lm/k;->a:Lm/h;

    iput-object v2, v3, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance v2, Lcom/sec/android/app/sbrowser/si_log/ui/e;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/si_log/ui/e;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Ljava/util/List;I)V

    const p0, 0x7f140f72

    invoke-virtual {v1, p0, v2}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const p1, 0x7f140f71

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    iget-object p1, p0, Lm/k;->a:Lm/h;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lm/h;->m:Z

    invoke-virtual {p0}, Lm/k;->f()Lm/l;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final onViewCreated$lambda$3$lambda$2(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Ljava/util/List;ILandroid/content/DialogInterface;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->getSiLogViewModel()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->deleteMultipleSILogs(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string p3, "All "

    const-string p4, " Entities in Group #"

    const-string v0, " deleted"

    invoke-static {p1, p2, p3, p4, v0}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->showToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Ldb/r;
    .locals 3

    const-string v0, "historyItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->currentHistoryItemClickCount:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->currentClickedHistoryItem:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->resetCurrentClickedHistoryItem(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->currentHistoryItemClickCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->currentHistoryItemClickCount:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0, v2, v0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->resetCurrentClickedHistoryItem$default(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[SILog]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getId()J

    move-result-wide v0

    const-string p1, "[SILog] printed for Entity #"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->showToastMessage(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final onViewCreated$lambda$6(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Ldb/r;
    .locals 3

    const-string v0, "historyItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/k;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140f76

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f140f75

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lm/k;->a:Lm/h;

    iput-object v1, v2, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/f;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/auth/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x7f140f72

    invoke-virtual {v0, p0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const p1, 0x7f140f71

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    iget-object p1, p0, Lm/k;->a:Lm/h;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lm/h;->m:Z

    invoke-virtual {p0}, Lm/k;->f()Lm/l;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final onViewCreated$lambda$6$lambda$5(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->getSiLogViewModel()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->deleteSILog(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getId()J

    move-result-wide p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Entity #"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " deleted"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->showToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method private static final onViewCreated$lambda$7(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;Ldb/j;)Ldb/r;
    .locals 1

    iget-object v0, p1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Ldb/j;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->modifyList(Ljava/lang/String;Ljava/util/List;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final resetCurrentClickedHistoryItem(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->currentClickedHistoryItem:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->currentHistoryItemClickCount:I

    return-void
.end method

.method public static synthetic resetCurrentClickedHistoryItem$default(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->resetCurrentClickedHistoryItem(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V

    return-void
.end method

.method private final setSourceGroupType(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->getSiLogViewModel()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->setSILogHistoryListDisplayGroupType(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " selected."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->showToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method private final showToastMessage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final siLogViewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;)Landroidx/lifecycle/v0;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$Factory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v1, "getApplication(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$Factory;-><init>(Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryListFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryListFragmentBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryListFragmentBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryListFragmentBinding;->getRoot()Landroid/widget/FrameLayout;

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

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->resetCurrentClickedHistoryItem$default(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;ILjava/lang/Object;)V

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

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const p2, 0x7f140f77

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;

    new-instance p2, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/c;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/d;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;I)V

    invoke-direct {p2, v0, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;-><init>(Lsb/n;Lsb/k;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/d;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/si_log/ui/d;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/si_log/ui/d;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;I)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;-><init>(Lsb/k;Lsb/k;)V

    invoke-direct {p1, p2, v0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->getSiLogViewModel()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getSiLogHistoryListDisplayItemGroups()Landroidx/lifecycle/S;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v0

    new-instance v1, LC9/b;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p1}, LC9/b;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p2, v0, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryListFragmentBinding;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryListFragmentBinding;->historyGroupRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment$onViewCreated$3;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object p0

    const-string v0, "getViewLifecycleOwner(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/C;->RESUMED:Landroidx/lifecycle/C;

    invoke-virtual {p1, p2, p0, v0}, Landroidx/activity/p;->addMenuProvider(Lf1/p;Landroidx/lifecycle/J;Landroidx/lifecycle/C;)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
