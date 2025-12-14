.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0007\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J/\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000e2\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0005\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010&\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008&\u0010\'R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010(\u001a\u0004\u0008)\u0010*R#\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010+\u001a\u0004\u0008,\u0010-R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010.\u001a\u0004\u0008/\u00100R\u0016\u00101\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102\u00a8\u00063"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "viewModel",
        "Lkotlin/Function1;",
        "",
        "Ldb/r;",
        "callback",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "iconViewListener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lsb/k;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Landroidx/recyclerview/widget/h1;",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;",
        "holder",
        "position",
        "onBindViewHolder",
        "(Landroidx/recyclerview/widget/h1;I)V",
        "",
        "",
        "payloads",
        "(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V",
        "getItemCount",
        "()I",
        "getItemViewType",
        "(I)I",
        "visibility",
        "setVisibility",
        "(Z)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;",
        "isEditMode",
        "setEditMode",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V",
        "onViewAttachedToWindow",
        "(Landroidx/recyclerview/widget/h1;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "getViewModel",
        "()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "Lsb/k;",
        "getCallback",
        "()Lsb/k;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "getIconViewListener",
        "()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "isVisible",
        "Z",
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


# instance fields
.field private final callback:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final iconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isVisible:Z

.field private final viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lsb/k;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
            "Lsb/k;",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
            ")V"
        }
    .end annotation

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconViewListener"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->callback:Lsb/k;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->iconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->isVisible:Z

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const p0, 0x7f0e0585

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

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;->bind()V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    return-void

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->bind(Ljava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->iconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->callback:Lsb/k;

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lsb/k;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/h1;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->onViewAttachedToWindow(Landroidx/recyclerview/widget/h1;)V

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "5510"

    const-string p1, "QANative"

    const-string v0, "201"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "isEditMode"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->isVisible:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "editmode"

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->isVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->isVisible:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->notifyItemInserted(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->notifyItemRemoved(I)V

    :goto_0
    return-void
.end method
