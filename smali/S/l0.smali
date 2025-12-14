.class public final LS/l0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lx0/j;

.field public b:Lx0/b;

.field public c:Z

.field public synthetic d:Ljava/lang/Object;

.field public e:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LS/l0;->d:Ljava/lang/Object;

    iget p1, p0, LS/l0;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LS/l0;->e:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p1, p0}, LS/m0;->a(Lx0/j;ZLx0/b;Lkb/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
