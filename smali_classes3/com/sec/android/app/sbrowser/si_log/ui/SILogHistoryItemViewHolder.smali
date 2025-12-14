.class public final Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;
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
        Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001f2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001fB\u0019\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryItemBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;",
        "itemListener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryItemBinding;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V",
        "Ldb/r;",
        "setHolderAttributes",
        "()V",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "siLogEntity",
        "bindItem",
        "(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "",
        "onLongClick",
        "(Landroid/view/View;)Z",
        "siLogHistoryItemListener",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;",
        "Landroid/widget/TextView;",
        "siLogHistoryItemText",
        "Landroid/widget/TextView;",
        "siLogHistoryItem",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private siLogHistoryItem:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

.field private final siLogHistoryItemListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final siLogHistoryItemText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->$stable:I

    const-string v0, "SILogHistoryItemViewHolder"

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryItemBinding;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->siLogHistoryItemListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryItemBinding;->historyItemText:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->siLogHistoryItemText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryItemBinding;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/SiLogHistoryItemBinding;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V

    return-void
.end method

.method private final setHolderAttributes()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->siLogHistoryItemText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->siLogHistoryItem:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogUtils;->siLogEntityToSummary(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "siLogHistoryItem"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final bindItem(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "siLogEntity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->siLogHistoryItem:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->setHolderAttributes()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->siLogHistoryItemListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;->getOnTextClick()Lsb/k;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->siLogHistoryItem:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "siLogHistoryItem"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->siLogHistoryItemListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;->getOnTextLongClick()Lsb/k;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->siLogHistoryItem:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "siLogHistoryItem"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
