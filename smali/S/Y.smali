.class public final LS/Y;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public synthetic a:J

.field public final synthetic b:La0/a0;

.field public final synthetic c:La0/a0;


# direct methods
.method public constructor <init>(La0/a0;La0/a0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LS/Y;->b:La0/a0;

    iput-object p2, p0, LS/Y;->c:La0/a0;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, LNc/B;

    check-cast p2, LH0/o;

    iget-wide p1, p2, LH0/o;->a:J

    check-cast p3, Lib/c;

    new-instance v0, LS/Y;

    iget-object v1, p0, LS/Y;->c:La0/a0;

    iget-object p0, p0, LS/Y;->b:La0/a0;

    invoke-direct {v0, p0, v1, p3}, LS/Y;-><init>(La0/a0;La0/a0;Lib/c;)V

    iput-wide p1, v0, LS/Y;->a:J

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, LS/Y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-wide v0, p0, LS/Y;->a:J

    iget-object p1, p0, LS/Y;->b:La0/a0;

    invoke-interface {p1}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw0/d;

    invoke-virtual {p1}, Lw0/d;->c()LNc/B;

    move-result-object p1

    new-instance v2, LS/X;

    iget-object p0, p0, LS/Y;->c:La0/a0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, LS/X;-><init>(La0/a0;JLib/c;)V

    const/4 p0, 0x3

    invoke-static {p1, v3, v3, v2, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
