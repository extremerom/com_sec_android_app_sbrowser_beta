.class public abstract LS/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LS/Q;

.field public static final b:LA0/g;

.field public static final c:LS/O;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LS/Q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LS/c0;->a:LS/Q;

    sget-object v0, LS/P;->a:LS/P;

    new-instance v1, LA0/g;

    invoke-direct {v1, v0}, LA0/g;-><init>(Lsb/a;)V

    sput-object v1, LS/c0;->b:LA0/g;

    new-instance v0, LS/O;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LS/c0;->c:LS/O;

    return-void
.end method

.method public static final a(Lx0/j;Lkb/a;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, LS/S;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LS/S;

    iget v1, v0, LS/S;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LS/S;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LS/S;

    invoke-direct {v0, p1}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p1, v0, LS/S;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LS/S;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LS/S;->a:Lx0/j;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :cond_3
    iput-object p0, v0, LS/S;->a:Lx0/j;

    iput v3, v0, LS/S;->c:I

    sget-object p1, Lx0/b;->Main:Lx0/b;

    invoke-virtual {p0, p1, v0}, Lx0/j;->a(Lx0/b;Lkb/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lx0/a;

    iget v2, p1, Lx0/a;->b:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_3

    move-object v1, p1

    :goto_2
    return-object v1
.end method
