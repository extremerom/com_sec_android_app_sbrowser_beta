.class public final LS/S;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lx0/j;

.field public synthetic b:Ljava/lang/Object;

.field public c:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LS/S;->b:Ljava/lang/Object;

    iget p1, p0, LS/S;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LS/S;->c:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, LS/c0;->a(Lx0/j;Lkb/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
