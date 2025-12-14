.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$4;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltb/m;",
        "Lsb/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroidx/lifecycle/s0;",
        "VM",
        "Li2/b;",
        "invoke",
        "()Li2/b;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $extrasProducer:Lsb/a;

.field final synthetic $owner$delegate:Ldb/f;


# direct methods
.method public constructor <init>(Lsb/a;Ldb/f;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$4;->$extrasProducer:Lsb/a;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$4;->$owner$delegate:Ldb/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Li2/b;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$4;->$extrasProducer:Lsb/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li2/b;

    if-nez v0, :cond_3

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$4;->$owner$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/y0;

    instance-of v0, p0, Landroidx/lifecycle/w;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/lifecycle/w;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/lifecycle/w;->getDefaultViewModelCreationExtras()Li2/b;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Li2/a;->b:Li2/a;

    :cond_3
    :goto_1
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment$special$$inlined$viewModels$default$4;->invoke()Li2/b;

    move-result-object p0

    return-object p0
.end method
