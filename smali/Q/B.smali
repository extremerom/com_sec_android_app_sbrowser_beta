.class public final LQ/B;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:LQ/i;

.field public b:LQ/e;

.field public c:Lsb/k;

.field public d:Ltb/w;

.field public synthetic e:Ljava/lang/Object;

.field public f:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, LQ/B;->e:Ljava/lang/Object;

    iget p1, p0, LQ/B;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LQ/B;->f:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, LG5/x;->e(LQ/i;LQ/e;JLsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
