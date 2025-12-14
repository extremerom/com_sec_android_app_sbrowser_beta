.class public final LQ/E;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ltb/m;


# direct methods
.method public constructor <init>(ILsb/k;)V
    .locals 0

    iput p1, p0, LQ/E;->a:I

    packed-switch p1, :pswitch_data_0

    check-cast p2, Ltb/m;

    iput-object p2, p0, LQ/E;->b:Ltb/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void

    :pswitch_0
    check-cast p2, Ltb/m;

    iput-object p2, p0, LQ/E;->b:Ltb/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LQ/E;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lk0/l;

    iget-object p0, p0, LQ/E;->b:Ltb/m;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk0/h;

    sget-object p1, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lk0/n;->c:Lk0/l;

    invoke-virtual {p0}, Lk0/h;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lk0/l;->p(I)Lk0/l;

    move-result-object v0

    sput-object v0, Lk0/n;->c:Lk0/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, LQ/E;->b:Ltb/m;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
