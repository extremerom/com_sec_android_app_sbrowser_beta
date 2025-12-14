.class public final LV/I;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:LV/J;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(LV/J;IILib/c;)V
    .locals 0

    iput-object p1, p0, LV/I;->a:LV/J;

    iput p2, p0, LV/I;->b:I

    iput p3, p0, LV/I;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance p1, LV/I;

    iget v0, p0, LV/I;->b:I

    iget v1, p0, LV/I;->c:I

    iget-object p0, p0, LV/I;->a:LV/J;

    invoke-direct {p1, p0, v0, v1, p2}, LV/I;-><init>(LV/J;IILib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LS/N;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LV/I;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LV/I;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LV/I;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LV/I;->a:LV/J;

    iget-object v0, p1, LV/J;->a:Lcom/samsung/android/scloud/lib/setting/e;

    iget v1, p0, LV/I;->b:I

    iget p0, p0, LV/I;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/scloud/lib/setting/e;->r(II)V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    iget-object p0, p1, LV/J;->n:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV/n;

    if-eqz p0, :cond_0

    iget-object v0, p0, LV/n;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v0, Lfb/w;->a:Lfb/w;

    iput-object v0, p0, LV/n;->c:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, LV/n;->d:I

    :cond_0
    iget-object p0, p1, LV/J;->k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/node/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->f()V

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
