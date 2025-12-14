.class public final LJ2/A0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:[LJ2/D;

.field public b:LJ2/C0;

.field public c:LJ2/m0;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:[LJ2/D;

.field public final synthetic i:LJ2/C0;

.field public final synthetic j:LJ2/m0;


# direct methods
.method public constructor <init>([LJ2/D;LJ2/C0;LJ2/m0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LJ2/A0;->h:[LJ2/D;

    iput-object p2, p0, LJ2/A0;->i:LJ2/C0;

    iput-object p3, p0, LJ2/A0;->j:LJ2/m0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance p1, LJ2/A0;

    iget-object v0, p0, LJ2/A0;->i:LJ2/C0;

    iget-object v1, p0, LJ2/A0;->j:LJ2/m0;

    iget-object p0, p0, LJ2/A0;->h:[LJ2/D;

    invoke-direct {p1, p0, v0, v1, p2}, LJ2/A0;-><init>([LJ2/D;LJ2/C0;LJ2/m0;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LL2/p;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LJ2/A0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LJ2/A0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LJ2/A0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LJ2/A0;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    iget v1, p0, LJ2/A0;->f:I

    iget v4, p0, LJ2/A0;->e:I

    iget v5, p0, LJ2/A0;->d:I

    iget-object v6, p0, LJ2/A0;->c:LJ2/m0;

    iget-object v7, p0, LJ2/A0;->b:LJ2/C0;

    iget-object v8, p0, LJ2/A0;->a:[LJ2/D;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LJ2/A0;->h:[LJ2/D;

    array-length v1, p1

    const/4 v4, 0x0

    iget-object v5, p0, LJ2/A0;->i:LJ2/C0;

    iget-object v6, p0, LJ2/A0;->j:LJ2/m0;

    move-object v8, p1

    move p1, v4

    move-object v7, v5

    :goto_0
    if-ge v4, v1, :cond_7

    aget-object v5, v8, v4

    add-int/lit8 v9, p1, 0x1

    sget-object v10, LJ2/z0;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v10, v5

    if-eq v5, v2, :cond_6

    if-eq v5, v3, :cond_5

    const/4 v10, 0x3

    if-ne v5, v10, :cond_4

    iput-object v8, p0, LJ2/A0;->a:[LJ2/D;

    iput-object v7, p0, LJ2/A0;->b:LJ2/C0;

    iput-object v6, p0, LJ2/A0;->c:LJ2/m0;

    iput v9, p0, LJ2/A0;->d:I

    iput v4, p0, LJ2/A0;->e:I

    iput v1, p0, LJ2/A0;->f:I

    iput v3, p0, LJ2/A0;->g:I

    invoke-static {v7, v6, p1, p0}, LJ2/C0;->d(LJ2/C0;LJ2/m0;ILkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move v5, v9

    :goto_1
    move p1, v5

    goto :goto_2

    :cond_4
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    iput-object v8, p0, LJ2/A0;->a:[LJ2/D;

    iput-object v7, p0, LJ2/A0;->b:LJ2/C0;

    iput-object v6, p0, LJ2/A0;->c:LJ2/m0;

    iput v9, p0, LJ2/A0;->d:I

    iput v4, p0, LJ2/A0;->e:I

    iput v1, p0, LJ2/A0;->f:I

    iput v2, p0, LJ2/A0;->g:I

    invoke-static {v7, v6, p1, p0}, LJ2/C0;->c(LJ2/C0;LJ2/m0;ILkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_6
    move p1, v9

    :goto_2
    add-int/2addr v4, v2

    goto :goto_0

    :cond_7
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
