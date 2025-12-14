.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 >2\u00020\u0001:\u0001>B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ/\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00102\u000e\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001cH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001fJ\r\u0010 \u001a\u00020\u0019\u00a2\u0006\u0004\u0008 \u0010!J\u001f\u0010%\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\n2\u0008\u0010$\u001a\u0004\u0018\u00010#\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010)\u001a\u00020\u00192\u0006\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\r\u0010+\u001a\u00020\u0019\u00a2\u0006\u0004\u0008+\u0010!J\u001d\u0010/\u001a\u00020\u00192\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020\n\u00a2\u0006\u0004\u0008/\u00100J\u001d\u00103\u001a\u00020\u00192\u0006\u00101\u001a\u00020\u00102\u0006\u00102\u001a\u00020#\u00a2\u0006\u0004\u00083\u00104J\r\u00105\u001a\u00020\u0019\u00a2\u0006\u0004\u00085\u0010!R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u00106R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u00107R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u00108R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u00109R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010:R\u0018\u0010<\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=\u00a8\u0006?"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/lifecycle/J;",
        "lifecycleOwner",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "viewModel",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;",
        "stickyTabLayout",
        "",
        "isForPreview",
        "<init>",
        "(Landroid/content/Context;Landroidx/lifecycle/J;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;Z)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Landroidx/recyclerview/widget/h1;",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Landroidx/recyclerview/widget/h1;I)V",
        "",
        "",
        "payloads",
        "(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V",
        "fetchMoreNewsItems",
        "()V",
        "visibility",
        "Landroid/widget/ImageView;",
        "backgroundView",
        "updateStickyTabLayoutVisibility",
        "(ZLandroid/widget/ImageView;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;",
        "mode",
        "setEditMode",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V",
        "updateViewSize",
        "",
        "translationY",
        "animate",
        "translateStickyTabY",
        "(FZ)V",
        "toolbarHeight",
        "customBackground",
        "updateStickyTabLayoutVisibilityIfNeeded",
        "(ILandroid/widget/ImageView;)V",
        "updateNewFeedTabTextColor",
        "Landroid/content/Context;",
        "Landroidx/lifecycle/J;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;",
        "Z",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;",
        "newsFeedTabMainViewHolder",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isForPreview:Z

.field private final lifecycleOwner:Landroidx/lifecycle/J;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private newsFeedTabMainViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stickyTabLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/J;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/J;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stickyTabLayout"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->lifecycleOwner:Landroidx/lifecycle/J;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->stickyTabLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->isForPreview:Z

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;ILandroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->updateStickyTabLayoutVisibilityIfNeeded$lambda$0(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;ILandroid/widget/ImageView;)V

    return-void
.end method

.method private static final updateStickyTabLayoutVisibilityIfNeeded$lambda$0(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;ILandroid/widget/ImageView;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p0, 0x1

    aget v1, v0, p0

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getNewsFeedVisibility()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    aget v0, v0, p0

    if-lt p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->updateStickyTabLayoutVisibility(ZLandroid/widget/ImageView;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final fetchMoreNewsItems()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->newsFeedTabMainViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;->fetchMoreNewsItems()V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "holder"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;->bind()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/h1;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    return-void

    :cond_0
    instance-of p0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;->bind(Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown viewHolder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->lifecycleOwner:Landroidx/lifecycle/J;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    const-string v0, "mViewModel"

    invoke-static {v3, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, p1, v4}, Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;

    move-result-object v4

    const-string p1, "inflate(...)"

    invoke-static {v4, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->stickyTabLayout:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->isForPreview:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;-><init>(Landroid/content/Context;Landroidx/lifecycle/J;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;Z)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->newsFeedTabMainViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    return-object p2
.end method

.method public setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "editmode"

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public final translateStickyTabY(FZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->newsFeedTabMainViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;->translateStickyTabY(FZ)V

    :cond_0
    return-void
.end method

.method public final updateNewFeedTabTextColor()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->newsFeedTabMainViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;->updateNewFeedTabTextColor()V

    :cond_0
    return-void
.end method

.method public final updateStickyTabLayoutVisibility(ZLandroid/widget/ImageView;)V
    .locals 0
    .param p2    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->newsFeedTabMainViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;->updateStickyTabLayoutVisibility(ZLandroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public final updateStickyTabLayoutVisibilityIfNeeded(ILandroid/widget/ImageView;)V
    .locals 8
    .param p2    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "customBackground"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->newsFeedTabMainViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f0b07d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LN4/f;

    const/4 v4, 0x1

    move-object v2, v1

    move v3, p1

    move-object v5, v0

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, LN4/f;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateViewSize()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->newsFeedTabMainViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;->updateViewSize()V

    :cond_0
    return-void
.end method
