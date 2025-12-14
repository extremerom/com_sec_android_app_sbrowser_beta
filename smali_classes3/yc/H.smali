.class public final Lyc/H;
.super LEc/d;
.source "SourceFile"


# static fields
.field public static final b:LA7/h;

.field public static final c:Lyc/H;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LA7/h;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LA7/h;-><init>(I)V

    sput-object v0, Lyc/H;->b:LA7/h;

    new-instance v0, Lyc/H;

    sget-object v1, Lfb/v;->a:Lfb/v;

    invoke-direct {v0, v1}, Lyc/H;-><init>(Ljava/util/List;)V

    sput-object v0, Lyc/H;->c:Lyc/H;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 7

    sget-object v0, LEc/k;->a:LEc/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LEc/d;->a:LEc/a;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ltb/x;->a:Ltb/y;

    const-class v2, Lyc/i;

    invoke-virtual {v1, v2}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v1

    invoke-interface {v1}, LAb/c;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object v2, Lyc/H;->b:LA7/h;

    invoke-virtual {v2, v1}, LA7/h;->g(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, LEc/d;->a:LEc/a;

    invoke-virtual {v2}, LEc/a;->g()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, LEc/d;->a:LEc/a;

    :try_start_0
    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    invoke-static {v2, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LEc/r;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget v4, v2, LEc/r;->b:I

    if-ne v4, v1, :cond_1

    new-instance v2, LEc/r;

    invoke-direct {v2, v1, v0}, LEc/r;-><init>(ILyc/i;)V

    iput-object v2, p0, LEc/d;->a:LEc/a;

    goto :goto_0

    :cond_1
    new-instance v5, LEc/c;

    const/16 v6, 0x14

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, LEc/c;->a:[Ljava/lang/Object;

    iput v3, v5, LEc/c;->b:I

    iget-object v2, v2, LEc/r;->a:Lyc/i;

    invoke-virtual {v5, v4, v2}, LEc/c;->i(ILyc/i;)V

    iput-object v5, p0, LEc/d;->a:LEc/a;

    :goto_1
    iget-object v2, p0, LEc/d;->a:LEc/a;

    invoke-virtual {v2, v1, v0}, LEc/a;->i(ILyc/i;)V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OneElementArrayMap"

    invoke-static {v2, v4, v0}, LEc/d;->g(LEc/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    iget-object v2, p0, LEc/d;->a:LEc/a;

    instance-of v4, v2, LEc/k;

    if-eqz v4, :cond_3

    new-instance v2, LEc/r;

    invoke-direct {v2, v1, v0}, LEc/r;-><init>(ILyc/i;)V

    iput-object v2, p0, LEc/d;->a:LEc/a;

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "EmptyArrayMap"

    invoke-static {v2, v3, p1}, LEc/d;->g(LEc/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method
