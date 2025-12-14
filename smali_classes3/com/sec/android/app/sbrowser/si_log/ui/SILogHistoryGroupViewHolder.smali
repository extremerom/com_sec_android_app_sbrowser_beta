.class public final Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 .2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001.B!\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J/\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c2\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u000e2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0019\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010%\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010(\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0014\u0010+\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R(\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;",
        "groupListener",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;",
        "itemListener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V",
        "",
        "siLogHistoryGroupType",
        "Ldb/r;",
        "setHolderAttributes",
        "(Ljava/lang/String;)V",
        "Ldb/j;",
        "",
        "",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "siLogHistoryItemGroup",
        "bindItemGroup",
        "(Ljava/lang/String;Ldb/j;)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "",
        "onLongClick",
        "(Landroid/view/View;)Z",
        "siLogHistoryGroupListener",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;",
        "Landroid/widget/TextView;",
        "siLogHistoryGroupHeaderText",
        "Landroid/widget/TextView;",
        "Landroid/widget/ImageView;",
        "siLogHistoryGroupHeaderIndicator",
        "Landroid/widget/ImageView;",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;",
        "siLogHistoryItemAdapter",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "siLogHistoryItemRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Ldb/j;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final siLogHistoryGroupHeaderIndicator:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogHistoryGroupHeaderText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogHistoryGroupListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogHistoryItemAdapter:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private siLogHistoryItemGroup:Ldb/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/j;"
        }
    .end annotation
.end field

.field private final siLogHistoryItemRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->$stable:I

    const-string v0, "SILogHistoryGroupViewHolder"

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryGroupListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;->historyGroupHeader:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;->historyGroupHeader:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;->historyGroupHeaderText:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryGroupHeaderText:Landroid/widget/TextView;

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;->historyGroupHeaderIndicator:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryGroupHeaderIndicator:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryItemAdapter:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;->historyItemRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryItemRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0806ec

    invoke-static {p1, p0}, Ll5/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/E;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/E;-><init>(Landroid/content/Context;I)V

    iput-object p0, p1, Landroidx/recyclerview/widget/E;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryGroupBinding;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V

    return-void
.end method

.method private final setHolderAttributes(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryItemGroup:Ldb/j;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ldb/j;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Ldb/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryGroupHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p1, v1, v4}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f140f79

    invoke-virtual {v3, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryItemAdapter:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/h0;->submitList(Ljava/util/List;)V

    return-void

    :cond_0
    const-string p0, "siLogHistoryItemGroup"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final bindItemGroup(Ljava/lang/String;Ldb/j;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ldb/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldb/j;",
            ")V"
        }
    .end annotation

    const-string v0, "siLogHistoryGroupType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "siLogHistoryItemGroup"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryItemGroup:Ldb/j;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->setHolderAttributes(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryGroupListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;->getOnHeaderClick()Lsb/n;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryItemRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryGroupHeaderIndicator:Landroid/widget/ImageView;

    invoke-interface {p1, v0, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryGroupListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;->getOnHeaderLongClick()Lsb/k;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->siLogHistoryItemGroup:Ldb/j;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "siLogHistoryItemGroup"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
