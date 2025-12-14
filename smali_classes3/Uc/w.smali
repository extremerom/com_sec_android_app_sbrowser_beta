.class public LUc/w;
.super LNc/a;
.source "SourceFile"

# interfaces
.implements Lkb/d;


# instance fields
.field public final d:Lib/c;


# direct methods
.method public constructor <init>(Lib/c;Lib/h;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, LNc/a;-><init>(Lib/h;Z)V

    iput-object p1, p0, LUc/w;->d:Lib/c;

    return-void
.end method


# virtual methods
.method public final U()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getCallerFrame()Lkb/d;
    .locals 1

    iget-object p0, p0, LUc/w;->d:Lib/c;

    instance-of v0, p0, Lkb/d;

    if-eqz v0, :cond_0

    check-cast p0, Lkb/d;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public x(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LUc/w;->d:Lib/c;

    invoke-static {p0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p0

    invoke-static {p1}, LNc/E;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, LUc/a;->j(Lib/c;Ljava/lang/Object;)V

    return-void
.end method

.method public y(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LUc/w;->d:Lib/c;

    invoke-static {p1}, LNc/E;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
