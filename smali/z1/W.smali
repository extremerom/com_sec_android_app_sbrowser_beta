.class public final Lz1/W;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lz1/W;->a:Ljava/lang/Object;

    iget p1, p0, Lz1/W;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz1/W;->b:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, LG5/S2;->k(Li0/a;Lkb/c;)Ljb/a;

    move-result-object p0

    return-object p0
.end method
