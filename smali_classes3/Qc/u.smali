.class public final LQc/u;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Throwable;

.field public synthetic b:Ljava/lang/Object;

.field public c:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LQc/u;->b:Ljava/lang/Object;

    iget p1, p0, LQc/u;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQc/u;->c:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, LQc/n0;->d(LQc/G0;Lsb/o;Ljava/lang/Throwable;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
