.class public final LZ1/y;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ld2/g;

.field public c:Lsb/n;

.field public d:LR1/m;

.field public e:Ljava/util/Iterator;

.field public synthetic f:Ljava/lang/Object;

.field public g:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, LZ1/y;->f:Ljava/lang/Object;

    iget p1, p0, LZ1/y;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LZ1/y;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, LG5/A3;->e(Landroid/content/Context;Ld2/j;Ljava/lang/Class;ILZ1/x;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
