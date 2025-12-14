.class public final Lz1/l;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lz1/l;->a:I

    iput-object p2, p0, Lz1/l;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lz1/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lz1/l;->b:Ljava/lang/Object;

    check-cast p0, Lz1/i0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lz1/i0;->d:Lz1/Y;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz1/i0;->f:Lm1/h;

    if-nez v1, :cond_0

    iget-object p0, p0, Lz1/i0;->a:Landroid/content/Context;

    sget-object v1, Lz1/i0;->e:Lo1/b;

    sget-object v2, Lz1/Y;->a:[LAb/u;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, p0, v2}, Lo1/b;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lm1/h;

    sput-object v1, Lz1/i0;->f:Lm1/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0

    :pswitch_0
    iget-object p0, p0, Lz1/l;->b:Ljava/lang/Object;

    check-cast p0, Lz1/p;

    iget-object p0, p0, Lz1/p;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
