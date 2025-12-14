.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewQuickAccessNestedRecyclerAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B-\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewQuickAccessNestedRecyclerAdapter;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "viewModel",
        "",
        "id",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;",
        "factory",
        "<init>",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;)V",
        "Landroid/view/View;",
        "itemView",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;",
        "getViewHolder",
        "(Landroid/view/View;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "viewHolder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Landroidx/recyclerview/widget/h1;I)V",
        "getIconRecyclerLayout",
        "()I",
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;)V

    return-void
.end method


# virtual methods
.method public getIconRecyclerLayout()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mId:I

    const v1, 0x7f0e04d8

    if-eq v0, v1, :cond_1

    const v1, 0x7f0e059b

    if-ne v0, v1, :cond_0

    const p0, 0x7f0e05a0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mId:I

    const-string v1, "Unknown layout "

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const p0, 0x7f0e04dd

    :goto_0
    return p0
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mId:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mFactory:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->getItemView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->updateEditModeState(Landroid/view/View;)V

    :cond_0
    return-void
.end method
