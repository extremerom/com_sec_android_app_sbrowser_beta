.class public final LS/w;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILib/c;I)V
    .locals 0

    iput p3, p0, LS/w;->a:I

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LS/w;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LQc/i;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lib/c;

    new-instance p0, LS/w;

    const/4 p1, 0x3

    const/4 p2, 0x2

    invoke-direct {p0, p1, p3, p2}, LS/w;-><init>(ILib/c;I)V

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    if-nez p1, :cond_0

    check-cast p2, Lr0/b;

    iget-wide p0, p2, Lr0/b;->a:J

    check-cast p3, Lib/c;

    new-instance p0, LS/w;

    const/4 p1, 0x3

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, LS/w;-><init>(ILib/c;I)V

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_1
    check-cast p1, LNc/B;

    check-cast p2, Lr0/b;

    iget-wide p0, p2, Lr0/b;->a:J

    check-cast p3, Lib/c;

    new-instance p0, LS/w;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, LS/w;-><init>(ILib/c;I)V

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ldb/r;->a:Ldb/r;

    iget p0, p0, LS/w;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    return-object v0

    :pswitch_0
    sget-object p0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    sget-object p0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
