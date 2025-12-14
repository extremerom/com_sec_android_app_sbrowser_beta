.class public final LC3/p;
.super Lo3/e;
.source "SourceFile"


# instance fields
.field public final synthetic c:LF6/t;

.field public final synthetic d:Lo3/e;

.field public final synthetic e:LE3/c;


# direct methods
.method public constructor <init>(LF6/t;Lo3/e;LE3/c;)V
    .locals 0

    iput-object p1, p0, LC3/p;->c:LF6/t;

    iput-object p2, p0, LC3/p;->d:Lo3/e;

    iput-object p3, p0, LC3/p;->e:LE3/c;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo3/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final i(LF6/t;)Ljava/lang/Object;
    .locals 12

    iget v0, p1, LF6/t;->a:F

    iget v1, p1, LF6/t;->b:F

    iget-object v2, p1, LF6/t;->f:Ljava/lang/Object;

    check-cast v2, LE3/c;

    iget-object v2, v2, LE3/c;->a:Ljava/lang/String;

    iget-object v3, p1, LF6/t;->g:Ljava/lang/Object;

    check-cast v3, LE3/c;

    iget-object v3, v3, LE3/c;->a:Ljava/lang/String;

    iget v4, p1, LF6/t;->c:F

    iget v5, p1, LF6/t;->d:F

    iget v6, p1, LF6/t;->e:F

    iget-object v7, p0, LC3/p;->c:LF6/t;

    iput v0, v7, LF6/t;->a:F

    iput v1, v7, LF6/t;->b:F

    iput-object v2, v7, LF6/t;->f:Ljava/lang/Object;

    iput-object v3, v7, LF6/t;->g:Ljava/lang/Object;

    iput v4, v7, LF6/t;->c:F

    iput v5, v7, LF6/t;->d:F

    iput v6, v7, LF6/t;->e:F

    iget-object v0, p0, LC3/p;->d:Lo3/e;

    iget-object v0, v0, Lo3/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/D;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, LF6/t;->d:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object p1, p1, LF6/t;->g:Ljava/lang/Object;

    :goto_0
    check-cast p1, LE3/c;

    goto :goto_1

    :cond_0
    iget-object p1, p1, LF6/t;->f:Ljava/lang/Object;

    goto :goto_0

    :goto_1
    iget-object v1, p1, LE3/c;->b:Ljava/lang/String;

    iget v2, p1, LE3/c;->c:F

    iget-object v3, p1, LE3/c;->d:LE3/b;

    iget v4, p1, LE3/c;->e:I

    iget v5, p1, LE3/c;->f:F

    iget v6, p1, LE3/c;->g:F

    iget v7, p1, LE3/c;->h:I

    iget v8, p1, LE3/c;->i:I

    iget v9, p1, LE3/c;->j:F

    iget-boolean v10, p1, LE3/c;->k:Z

    iget-object v11, p1, LE3/c;->l:Landroid/graphics/PointF;

    iget-object p1, p1, LE3/c;->m:Landroid/graphics/PointF;

    iget-object p0, p0, LC3/p;->e:LE3/c;

    iput-object v0, p0, LE3/c;->a:Ljava/lang/String;

    iput-object v1, p0, LE3/c;->b:Ljava/lang/String;

    iput v2, p0, LE3/c;->c:F

    iput-object v3, p0, LE3/c;->d:LE3/b;

    iput v4, p0, LE3/c;->e:I

    iput v5, p0, LE3/c;->f:F

    iput v6, p0, LE3/c;->g:F

    iput v7, p0, LE3/c;->h:I

    iput v8, p0, LE3/c;->i:I

    iput v9, p0, LE3/c;->j:F

    iput-boolean v10, p0, LE3/c;->k:Z

    iput-object v11, p0, LE3/c;->l:Landroid/graphics/PointF;

    iput-object p1, p0, LE3/c;->m:Landroid/graphics/PointF;

    return-object p0
.end method
