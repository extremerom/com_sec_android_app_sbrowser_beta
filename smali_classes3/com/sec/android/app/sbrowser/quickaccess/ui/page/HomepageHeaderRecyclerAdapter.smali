.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$Companion;,
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \"2\u00020\u0001:\u0002\"#B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J-\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000c2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u001cR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010 \u001a\u0004\u0008\u0007\u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "viewModel",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "listener",
        "",
        "isForPreview",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Landroidx/recyclerview/widget/h1;",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;",
        "holder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Landroidx/recyclerview/widget/h1;I)V",
        "getItemCount",
        "()I",
        "viewHolder",
        "",
        "",
        "payloads",
        "(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "getListener",
        "()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "Z",
        "()Z",
        "Companion",
        "HeaderBarViewHolder",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final isForPreview:Z

.field private final listener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;->listener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;->isForPreview:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isForPreview()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;->isForPreview:Z

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

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->bind()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown viewHolder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    return-void

    :cond_0
    instance-of p0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->bind(Ljava/util/List;)V

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

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;

    move-result-object v3

    const-string p2, "inflate(...)"

    invoke-static {v3, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string p1, "getContext(...)"

    invoke-static {v4, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;->listener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;->isForPreview:Z

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;Lcom/sec/android/app/sbrowser/databinding/HomepageHeaderBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ViewHolder "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to a context."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
