.class public final synthetic Lwc/h;
.super Ltb/a;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcc/T;

    const-string v0, "p0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltb/a;->receiver:Ljava/lang/Object;

    check-cast p0, Luc/E;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Luc/E;->d(Lcc/T;Z)Lyc/A;

    move-result-object p0

    return-object p0
.end method
