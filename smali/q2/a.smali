.class public final Lq2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroid/text/Layout$Alignment;

.field public c:F

.field public d:I

.field public e:I

.field public f:F

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:I


# virtual methods
.method public final a()Lq2/b;
    .locals 15

    new-instance v14, Lq2/b;

    iget-object v1, p0, Lq2/a;->a:Ljava/lang/CharSequence;

    iget-object v2, p0, Lq2/a;->b:Landroid/text/Layout$Alignment;

    iget v3, p0, Lq2/a;->c:F

    iget v4, p0, Lq2/a;->d:I

    iget v5, p0, Lq2/a;->e:I

    iget v6, p0, Lq2/a;->f:F

    iget v7, p0, Lq2/a;->g:I

    iget v8, p0, Lq2/a;->h:I

    iget v9, p0, Lq2/a;->i:F

    iget v10, p0, Lq2/a;->j:F

    iget v13, p0, Lq2/a;->m:I

    iget v11, p0, Lq2/a;->k:F

    iget v12, p0, Lq2/a;->l:I

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lq2/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIIFFFII)V

    return-object v14
.end method
