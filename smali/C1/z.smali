.class public final LC1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/n;


# static fields
.field public static final a:LC1/z;

.field public static final b:J

.field public static final c:LYc/d;

.field public static final d:LC1/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LC1/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LC1/z;->a:LC1/z;

    sget v0, LLc/a;->c:I

    const/4 v0, 0x5

    sget-object v1, LLc/c;->SECONDS:LLc/c;

    invoke-static {v0, v1}, LOd/b;->h(ILLc/c;)J

    move-result-wide v0

    sput-wide v0, LC1/z;->b:J

    invoke-static {}, LYc/e;->a()LYc/d;

    move-result-object v0

    sput-object v0, LC1/z;->c:LYc/d;

    new-instance v0, LC1/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LC1/y;-><init>(I)V

    sput-object v0, LC1/z;->d:LC1/y;

    return-void
.end method


# virtual methods
.method public final a(Lsb/n;Lib/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, LC1/t;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LC1/t;

    iget v1, v0, LC1/t;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LC1/t;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LC1/t;

    invoke-direct {v0, p0, p2}, LC1/t;-><init>(LC1/z;Lib/c;)V

    :goto_0
    iget-object p0, v0, LC1/t;->c:Ljava/lang/Object;

    sget-object p2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v0, LC1/t;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, LC1/t;->a:Ljava/lang/Object;

    check-cast p1, LYc/a;

    :try_start_0
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, LC1/t;->b:LYc/a;

    iget-object v1, v0, LC1/t;->a:Ljava/lang/Object;

    check-cast v1, Lsb/n;

    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p0, p1

    move-object p1, v1

    goto :goto_1

    :cond_3
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p1, v0, LC1/t;->a:Ljava/lang/Object;

    sget-object p0, LC1/z;->c:LYc/d;

    iput-object p0, v0, LC1/t;->b:LYc/a;

    iput v3, v0, LC1/t;->e:I

    invoke-virtual {p0, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_4

    return-object p2

    :cond_4
    :goto_1
    :try_start_1
    sget-object v1, LC1/z;->d:LC1/y;

    iput-object p0, v0, LC1/t;->a:Ljava/lang/Object;

    iput-object v4, v0, LC1/t;->b:LYc/a;

    iput v2, v0, LC1/t;->e:I

    invoke-interface {p1, v1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, p2, :cond_5

    return-object p2

    :cond_5
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_2
    invoke-interface {p1, v4}, LYc/a;->b(Ljava/lang/Object;)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_3
    invoke-interface {p1, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method
