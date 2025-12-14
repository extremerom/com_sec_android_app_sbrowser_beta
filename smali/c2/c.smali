.class public final Lc2/c;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Lk0/g;

.field public c:LPc/A;

.field public d:LPc/b;

.field public synthetic e:Ljava/lang/Object;

.field public f:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc2/c;->e:Ljava/lang/Object;

    iget p1, p0, Lc2/c;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc2/c;->f:I

    invoke-static {p0}, LG5/y;->l(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
