.class public final LQc/Q;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ltb/w;

.field public b:LQc/M;

.field public synthetic c:Ljava/lang/Object;

.field public d:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/Q;->c:Ljava/lang/Object;

    iget p1, p0, LQc/Q;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/Q;->d:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, LQc/n0;->p(LRc/D;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
