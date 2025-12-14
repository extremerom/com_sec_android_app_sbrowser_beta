.class public final LQc/N;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ltb/w;

.field public b:LQc/K;

.field public synthetic c:Ljava/lang/Object;

.field public d:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/N;->c:Ljava/lang/Object;

    iget p1, p0, LQc/N;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/N;->d:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, LQc/n0;->n(LQc/h;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
