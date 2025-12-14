.class public final LQc/O;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lsb/n;

.field public b:Ltb/w;

.field public c:LQc/M;

.field public synthetic d:Ljava/lang/Object;

.field public e:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/O;->d:Ljava/lang/Object;

    iget p1, p0, LQc/O;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/O;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, LQc/n0;->o(LQc/h;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
