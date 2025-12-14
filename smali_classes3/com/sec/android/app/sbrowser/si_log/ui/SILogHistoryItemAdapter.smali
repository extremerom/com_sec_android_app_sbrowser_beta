.class public final Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;
.super Landroidx/recyclerview/widget/h0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;,
        Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/h0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0014\u0015B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;",
        "Landroidx/recyclerview/widget/h0;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;",
        "itemListener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;",
        "holder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;I)V",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;",
        "Companion",
        "ItemListener",
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
.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ITEM_COMPARATOR$delegate:Ldb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final itemListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;->Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/c;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;->ITEM_COMPARATOR$delegate:Ldb/f;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemListener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;->Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;->access$getITEM_COMPARATOR(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion;)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h0;-><init>(Landroidx/recyclerview/widget/A;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;->itemListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;

    return-void
.end method

.method private static final ITEM_COMPARATOR_delegate$lambda$0()Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;-><init>()V

    return-object v0
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;->ITEM_COMPARATOR_delegate$lambda$0()Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getITEM_COMPARATOR$delegate$cp()Ldb/f;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;->ITEM_COMPARATOR$delegate:Ldb/f;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/h0;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "getItem(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->bindItem(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;->Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder$Companion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;->itemListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder$Companion;->create(Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemViewHolder;

    move-result-object p0

    return-object p0
.end method
