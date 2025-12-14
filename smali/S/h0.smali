.class public final LS/h0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LS/k0;

.field public b:Ltb/v;

.field public c:J

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:LS/k0;

.field public final synthetic g:Ltb/v;

.field public final synthetic h:J


# direct methods
.method public constructor <init>(LS/k0;Ltb/v;JLib/c;)V
    .locals 0

    iput-object p1, p0, LS/h0;->f:LS/k0;

    iput-object p2, p0, LS/h0;->g:Ltb/v;

    iput-wide p3, p0, LS/h0;->h:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance v6, LS/h0;

    iget-object v2, p0, LS/h0;->g:Ltb/v;

    iget-wide v3, p0, LS/h0;->h:J

    iget-object v1, p0, LS/h0;->f:LS/k0;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LS/h0;-><init>(LS/k0;Ltb/v;JLib/c;)V

    iput-object p1, v6, LS/h0;->e:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LS/N;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/h0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/h0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/h0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LS/h0;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, LS/h0;->c:J

    iget-object v3, p0, LS/h0;->b:Ltb/v;

    iget-object v4, p0, LS/h0;->a:LS/k0;

    iget-object p0, p0, LS/h0;->e:Ljava/lang/Object;

    check-cast p0, LS/k0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LS/h0;->e:Ljava/lang/Object;

    check-cast p1, LS/N;

    new-instance v1, LC1/j;

    iget-object v4, p0, LS/h0;->f:LS/k0;

    const/4 v3, 0x7

    invoke-direct {v1, v3, v4, p1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, LS/g0;

    invoke-direct {p1, v4, v1}, LS/g0;-><init>(LS/k0;LC1/j;)V

    iget-object v1, v4, LS/k0;->e:LS/g;

    iget-object v3, p0, LS/h0;->g:Ltb/v;

    iget-wide v5, v3, Ltb/v;->a:J

    iget-object v7, v4, LS/k0;->a:LS/I;

    sget-object v8, LS/I;->Horizontal:LS/I;

    iget-wide v9, p0, LS/h0;->h:J

    if-ne v7, v8, :cond_2

    invoke-static {v9, v10}, LH0/o;->b(J)F

    move-result v7

    goto :goto_0

    :cond_2
    invoke-static {v9, v10}, LH0/o;->c(J)F

    move-result v7

    :goto_0
    invoke-virtual {v4, v7}, LS/k0;->d(F)F

    move-result v7

    iput-object v4, p0, LS/h0;->e:Ljava/lang/Object;

    iput-object v4, p0, LS/h0;->a:LS/k0;

    iput-object v3, p0, LS/h0;->b:Ltb/v;

    iput-wide v5, p0, LS/h0;->c:J

    iput v2, p0, LS/h0;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, LS/f;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v1, p1, v9}, LS/f;-><init>(FLS/g;LS/g0;Lib/c;)V

    iget-object p1, v1, LS/g;->b:LS/O;

    invoke-static {p1, v8, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object p0, v4

    move-wide v0, v5

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, LS/k0;->d(F)F

    move-result p0

    iget-object p1, v4, LS/k0;->a:LS/I;

    sget-object v4, LS/I;->Horizontal:LS/I;

    const/4 v5, 0x0

    if-ne p1, v4, :cond_4

    const/4 p1, 0x2

    invoke-static {v0, v1, p0, v5, p1}, LH0/o;->a(JFFI)J

    move-result-wide p0

    goto :goto_2

    :cond_4
    invoke-static {v0, v1, v5, p0, v2}, LH0/o;->a(JFFI)J

    move-result-wide p0

    :goto_2
    iput-wide p0, v3, Ltb/v;->a:J

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
