.class public final LS/F;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LS/F;->a:Ljava/lang/Object;

    iget p1, p0, LS/F;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LS/F;->b:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, LG5/g2;->a(Lx0/j;Lkb/a;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
