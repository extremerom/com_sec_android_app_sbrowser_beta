.class public final Lc2/F;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:LNc/C0;

.field public g:La0/p0;

.field public h:La0/u;

.field public synthetic i:Ljava/lang/Object;

.field public j:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lc2/F;->i:Ljava/lang/Object;

    iget p1, p0, Lc2/F;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc2/F;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, LG5/z;->a(Lc2/U;Landroid/content/Context;Lc2/m;Lc2/Q;LA4/a;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
