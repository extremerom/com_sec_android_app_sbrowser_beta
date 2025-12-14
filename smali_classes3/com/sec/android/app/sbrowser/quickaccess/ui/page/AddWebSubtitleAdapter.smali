.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;,
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0002\u001e\u001fB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J#\u0010\u000b\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ#\u0010\u0012\u001a\u00020\u00112\n\u0010\u000f\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0010\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0014H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;",
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;",
        "itemType",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;I)V",
        "",
        "visible",
        "setVisible",
        "(Z)V",
        "needToAdd",
        "setTopMargin",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;",
        "visibility",
        "Z",
        "needToAddMargin",
        "SubtitleViewHolder",
        "ItemType",
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
.field private final itemType:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private needToAddMargin:Z

.field private visibility:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;->itemType:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;->visibility:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;I)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;->itemType:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;->bind(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$ItemType;)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;->needToAddMargin:Z

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;->setTopMargin(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;
    .locals 1
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

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter$SubtitleViewHolder;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebSubtitleBinding;)V

    return-object p2
.end method

.method public final setTopMargin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;->needToAddMargin:Z

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;->visibility:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final setVisible(Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;->visibility:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
