.class public final Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;
.super Landroidx/recyclerview/widget/h0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion;,
        Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/h0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u0000 \u001f2 \u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0002\u0012\u0004\u0012\u00020\u00060\u0001:\u0002\u001f B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ5\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u001e\u0010\u000f\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00020\u0004\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u001cR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u001dR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;",
        "Landroidx/recyclerview/widget/h0;",
        "Ldb/j;",
        "",
        "",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;",
        "groupListener",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;",
        "itemListener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V",
        "",
        "siLogHistoryGroupType",
        "siLogHistoryItemGroups",
        "Ldb/r;",
        "modifyList",
        "(Ljava/lang/String;Ljava/util/List;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;",
        "holder",
        "position",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;I)V",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;",
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;",
        "Ljava/lang/String;",
        "Companion",
        "GroupListener",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final GROUP_COMPARATOR$delegate:Ldb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final groupListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private siLogHistoryGroupType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->$stable:I

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/c;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->GROUP_COMPARATOR$delegate:Ldb/f;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "groupListener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemListener"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion;->access$getGROUP_COMPARATOR(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion;)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion$GROUP_COMPARATOR$2$1;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h0;-><init>(Landroidx/recyclerview/widget/A;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->groupListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->itemListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;

    return-void
.end method

.method private static final GROUP_COMPARATOR_delegate$lambda$0()Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion$GROUP_COMPARATOR$2$1;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion$GROUP_COMPARATOR$2$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion$GROUP_COMPARATOR$2$1;-><init>()V

    return-object v0
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion$GROUP_COMPARATOR$2$1;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->GROUP_COMPARATOR_delegate$lambda$0()Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion$GROUP_COMPARATOR$2$1;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getGROUP_COMPARATOR$delegate$cp()Ldb/f;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->GROUP_COMPARATOR$delegate:Ldb/f;

    return-object v0
.end method


# virtual methods
.method public final modifyList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ldb/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "siLogHistoryGroupType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "siLogHistoryItemGroups"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->siLogHistoryGroupType:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/h0;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->siLogHistoryGroupType:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/h0;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "getItem(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ldb/j;

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->bindItemGroup(Ljava/lang/String;Ldb/j;)V

    return-void

    :cond_0
    const-string p0, "siLogHistoryGroupType"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;->Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder$Companion;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->groupListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->itemListener:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;

    invoke-virtual {p2, p1, v0, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder$Companion;->create(Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$GroupListener;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$ItemListener;)Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupViewHolder;

    move-result-object p0

    return-object p0
.end method
