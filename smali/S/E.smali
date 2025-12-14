.class public final LS/E;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lsb/k;

.field public b:Lsb/k;

.field public c:Lx0/j;

.field public d:Lx0/j;

.field public e:Ltb/v;

.field public synthetic f:Ljava/lang/Object;

.field public g:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LS/E;->f:Ljava/lang/Object;

    iget p1, p0, LS/E;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LS/E;->g:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, LG5/L;->f(Lx0/j;LS/I;LS/v;Lkb/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
