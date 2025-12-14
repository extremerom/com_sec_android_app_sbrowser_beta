.class public final LE1/f;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lz1/Q0;

.field public synthetic c:Ljava/lang/Object;

.field public d:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LE1/f;->c:Ljava/lang/Object;

    iget p1, p0, LE1/f;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LE1/f;->d:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, LE1/g;->b(Landroid/content/Context;Lz1/Q0;Lkb/c;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
