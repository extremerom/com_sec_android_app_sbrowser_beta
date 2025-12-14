.class public final LQ/c;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:LQ/d;

.field public final synthetic b:LH0/i;


# direct methods
.method public constructor <init>(LQ/d;LH0/i;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQ/c;->a:LQ/d;

    iput-object p2, p0, LQ/c;->b:LH0/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LQ/c;

    iget-object v1, p0, LQ/c;->b:LH0/i;

    iget-object p0, p0, LQ/c;->a:LQ/d;

    invoke-direct {v0, p0, v1, p1}, LQ/c;-><init>(LQ/d;LH0/i;Lib/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, LQ/c;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LQ/c;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LQ/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LQ/c;->a:LQ/d;

    iget-object v0, p1, LQ/d;->c:LQ/i;

    iget-object v1, v0, LQ/i;->c:LQ/m;

    invoke-virtual {v1}, LQ/m;->d()V

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, LQ/i;->d:J

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p1, LQ/d;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, LQ/c;->b:LH0/i;

    invoke-static {p1, p0}, LQ/d;->a(LQ/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object v0, p1, LQ/d;->c:LQ/i;

    iget-object v0, v0, LQ/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, LQ/d;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
