.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;
.super Landroidx/recyclerview/widget/h0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$Companion;,
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;,
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/h0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 \u00142\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0003\u0014\u0015\u0016B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\r\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ#\u0010\u0011\u001a\u00020\u00052\n\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;",
        "Landroidx/recyclerview/widget/h0;",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;",
        "Lkotlin/Function1;",
        "Ldb/r;",
        "listener",
        "<init>",
        "(Lsb/k;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;",
        "holder",
        "position",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;I)V",
        "Lsb/k;",
        "Companion",
        "ItemViewHolder",
        "ItemPosition",
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
.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final diffUtil:Landroidx/recyclerview/widget/A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/A;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final listener:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$Companion;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$Companion$diffUtil$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$Companion$diffUtil$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;->diffUtil:Landroidx/recyclerview/widget/A;

    return-void
.end method

.method public constructor <init>(Lsb/k;)V
    .locals 1
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;->diffUtil:Landroidx/recyclerview/widget/A;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h0;-><init>(Landroidx/recyclerview/widget/A;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;->listener:Lsb/k;

    return-void
.end method

.method public static final synthetic access$getItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;I)Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/h0;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;I)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/h0;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition$Companion;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h0;->getItemCount()I

    move-result p0

    invoke-virtual {v1, p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition$Companion;->getValue(II)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;->bind(Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemPosition;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;
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

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;->listener:Lsb/k;

    invoke-direct {p2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter$ItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HistoryItemListAdapter;Lcom/sec/android/app/sbrowser/databinding/QuickaccessAddWebItemBinding;Lsb/k;)V

    return-object p2
.end method
