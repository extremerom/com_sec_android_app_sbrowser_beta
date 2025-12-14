.class public final Lmc/a;
.super Lmc/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(LKb/b;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(LJb/C;)Lyc/w;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lmc/g;->a:Ljava/lang/Object;

    check-cast p0, LKb/b;

    invoke-interface {p0}, LKb/b;->getType()Lyc/w;

    move-result-object p0

    return-object p0
.end method
