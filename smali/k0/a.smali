.class public final Lk0/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsb/k;

.field public final synthetic c:Lsb/k;


# direct methods
.method public synthetic constructor <init>(Lsb/k;Lsb/k;I)V
    .locals 0

    iput p3, p0, Lk0/a;->a:I

    iput-object p1, p0, Lk0/a;->b:Lsb/k;

    iput-object p2, p0, Lk0/a;->c:Lsb/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lk0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk0/a;->b:Lsb/k;

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lk0/a;->c:Lsb/k;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lk0/a;->b:Lsb/k;

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lk0/a;->c:Lsb/k;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, Lk0/l;

    sget-object v0, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lk0/n;->d:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lk0/n;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lk0/a;->b:Lsb/k;

    iget-object p0, p0, Lk0/a;->c:Lsb/k;

    new-instance v2, Lk0/c;

    invoke-direct {v2, v1, p1, v0, p0}, Lk0/c;-><init>(ILk0/l;Lsb/k;Lsb/k;)V

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
