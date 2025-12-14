.class public final LJ0/e;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Z

.field public final synthetic c:LJ0/i;

.field public final synthetic d:J


# direct methods
.method public constructor <init>(ZLJ0/i;JLib/c;)V
    .locals 0

    iput-boolean p1, p0, LJ0/e;->b:Z

    iput-object p2, p0, LJ0/e;->c:LJ0/i;

    iput-wide p3, p0, LJ0/e;->d:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6

    new-instance p1, LJ0/e;

    iget-object v2, p0, LJ0/e;->c:LJ0/i;

    iget-wide v3, p0, LJ0/e;->d:J

    iget-boolean v1, p0, LJ0/e;->b:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LJ0/e;-><init>(ZLJ0/i;JLib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LJ0/e;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LJ0/e;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LJ0/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LJ0/e;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-boolean p1, p0, LJ0/e;->b:Z

    iget-object v1, p0, LJ0/e;->c:LJ0/i;

    if-nez p1, :cond_3

    iget-object v4, v1, LJ0/i;->a:Lw0/d;

    sget-wide v5, LH0/o;->b:J

    iput v3, p0, LJ0/e;->a:I

    iget-wide v7, p0, LJ0/e;->d:J

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lw0/d;->a(JJLkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_3
    iget-object v1, v1, LJ0/i;->a:Lw0/d;

    sget-wide v4, LH0/o;->b:J

    iput v2, p0, LJ0/e;->a:I

    iget-wide v2, p0, LJ0/e;->d:J

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lw0/d;->a(JJLkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
