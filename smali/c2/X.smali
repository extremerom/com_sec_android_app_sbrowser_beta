.class public final Lc2/X;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lsb/n;

.field public synthetic b:Ljava/lang/Object;

.field public c:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc2/X;->b:Ljava/lang/Object;

    iget p1, p0, Lc2/X;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc2/X;->c:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, LG5/A;->g(LA9/b;Lc2/D;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
