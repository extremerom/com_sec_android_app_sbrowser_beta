.class public final LC1/D;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:LC1/u;

.field public final synthetic e:LC1/E;

.field public final synthetic f:LNc/B;

.field public final synthetic g:LC1/w;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLC1/u;LC1/E;LNc/B;LC1/w;Lib/c;)V
    .locals 0

    iput-object p1, p0, LC1/D;->b:Ljava/lang/String;

    iput-wide p2, p0, LC1/D;->c:J

    iput-object p4, p0, LC1/D;->d:LC1/u;

    iput-object p5, p0, LC1/D;->e:LC1/E;

    iput-object p6, p0, LC1/D;->f:LNc/B;

    iput-object p7, p0, LC1/D;->g:LC1/w;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 9

    new-instance p1, LC1/D;

    iget-object v7, p0, LC1/D;->g:LC1/w;

    iget-object v4, p0, LC1/D;->d:LC1/u;

    iget-object v5, p0, LC1/D;->e:LC1/E;

    iget-object v1, p0, LC1/D;->b:Ljava/lang/String;

    iget-wide v2, p0, LC1/D;->c:J

    iget-object v6, p0, LC1/D;->f:LNc/B;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, LC1/D;-><init>(Ljava/lang/String;JLC1/u;LC1/E;LNc/B;LC1/w;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LC1/D;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LC1/D;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LC1/D;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/D;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const-string v3, " "

    const-string v4, "msg"

    iget-object v5, p0, LC1/D;->b:Ljava/lang/String;

    const-string v6, "GWT:TimerScope"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Timer started"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    invoke-static {v1, v3, p1, v6}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v8, p0, LC1/D;->a:I

    iget-wide v8, p0, LC1/D;->c:J

    invoke-static {v8, v9}, LNc/E;->H(J)J

    move-result-wide v8

    invoke-static {v8, v9, p0}, LNc/E;->k(JLkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_0
    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Timer ended"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    invoke-static {v1, v3, p1, v6}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v7, p0, LC1/D;->a:I

    iget-object p1, p0, LC1/D;->d:LC1/u;

    iget-object v1, p0, LC1/D;->e:LC1/E;

    invoke-virtual {p1, v1, p0}, LC1/u;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    new-instance p1, LC1/C;

    iget-object v0, p0, LC1/D;->g:LC1/w;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p1, v0}, LC1/C;-><init>(I)V

    iget-object p0, p0, LC1/D;->f:LNc/B;

    invoke-static {p0, p1}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    return-object v2
.end method
