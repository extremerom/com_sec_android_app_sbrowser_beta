.class public abstract LNc/x;
.super Lib/a;
.source "SourceFile"

# interfaces
.implements Lib/e;


# static fields
.field public static final a:LNc/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LNc/w;

    sget-object v1, Lib/d;->a:Lib/d;

    sget-object v2, LNc/v;->a:LNc/v;

    invoke-direct {v0, v1, v2}, LNc/w;-><init>(Lib/g;Lsb/k;)V

    sput-object v0, LNc/x;->a:LNc/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lib/d;->a:Lib/d;

    invoke-direct {p0, v0}, Lib/a;-><init>(Lib/g;)V

    return-void
.end method


# virtual methods
.method public G(Lib/h;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LNc/x;->v(Lib/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public H(Lib/h;)Z
    .locals 0

    instance-of p0, p0, LNc/K0;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public J(I)LNc/x;
    .locals 1

    invoke-static {p1}, LUc/a;->b(I)V

    new-instance v0, LUc/j;

    invoke-direct {v0, p0, p1}, LUc/j;-><init>(LNc/x;I)V

    return-object v0
.end method

.method public final get(Lib/g;)Lib/f;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, LNc/w;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, LNc/w;

    invoke-virtual {p0}, Lib/a;->getKey()Lib/g;

    move-result-object v1

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_0

    iget-object v0, p1, LNc/w;->b:Lib/g;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object p1, p1, LNc/w;->a:Ltb/m;

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lib/f;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_1
    sget-object v0, Lib/d;->a:Lib/d;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    move-object v2, p0

    :cond_3
    return-object v2
.end method

.method public final minusKey(Lib/g;)Lib/h;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, LNc/w;

    sget-object v2, Lib/i;->a:Lib/i;

    if-eqz v1, :cond_1

    check-cast p1, LNc/w;

    invoke-virtual {p0}, Lib/a;->getKey()Lib/g;

    move-result-object v1

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_0

    iget-object v0, p1, LNc/w;->b:Lib/g;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object p1, p1, LNc/w;->a:Ltb/m;

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/f;

    if-eqz p1, :cond_2

    :goto_0
    move-object p0, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lib/d;->a:Lib/d;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LNc/E;->p(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract v(Lib/h;Ljava/lang/Runnable;)V
.end method
