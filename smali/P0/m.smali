.class public final LP0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:LP0/p;

.field public final c:LP0/o;

.field public final d:LP0/n;

.field public final e:LP0/q;

.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LP0/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, LP0/p;->a:I

    iput v1, v0, LP0/p;->b:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, LP0/p;->c:F

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, v0, LP0/p;->d:F

    iput-object v0, p0, LP0/m;->b:LP0/p;

    new-instance v0, LP0/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    iput v4, v0, LP0/o;->a:I

    iput v4, v0, LP0/o;->b:I

    iput v3, v0, LP0/o;->c:F

    iput v3, v0, LP0/o;->d:F

    iput-object v0, p0, LP0/m;->c:LP0/o;

    new-instance v0, LP0/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, LP0/n;->a:Z

    iput v4, v0, LP0/n;->d:I

    iput v4, v0, LP0/n;->e:I

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, LP0/n;->f:F

    iput v4, v0, LP0/n;->g:I

    iput v4, v0, LP0/n;->h:I

    iput v4, v0, LP0/n;->i:I

    iput v4, v0, LP0/n;->j:I

    iput v4, v0, LP0/n;->k:I

    iput v4, v0, LP0/n;->l:I

    iput v4, v0, LP0/n;->m:I

    iput v4, v0, LP0/n;->n:I

    iput v4, v0, LP0/n;->o:I

    iput v4, v0, LP0/n;->p:I

    iput v4, v0, LP0/n;->q:I

    iput v4, v0, LP0/n;->r:I

    iput v4, v0, LP0/n;->s:I

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v0, LP0/n;->t:F

    iput v6, v0, LP0/n;->u:F

    const/4 v6, 0x0

    iput-object v6, v0, LP0/n;->v:Ljava/lang/String;

    iput v4, v0, LP0/n;->w:I

    iput v1, v0, LP0/n;->x:I

    const/4 v6, 0x0

    iput v6, v0, LP0/n;->y:F

    iput v4, v0, LP0/n;->z:I

    iput v4, v0, LP0/n;->A:I

    iput v4, v0, LP0/n;->B:I

    iput v4, v0, LP0/n;->C:I

    iput v4, v0, LP0/n;->D:I

    iput v4, v0, LP0/n;->E:I

    iput v4, v0, LP0/n;->F:I

    iput v4, v0, LP0/n;->G:I

    iput v4, v0, LP0/n;->H:I

    iput v4, v0, LP0/n;->I:I

    iput v4, v0, LP0/n;->J:I

    iput v4, v0, LP0/n;->K:I

    iput v4, v0, LP0/n;->L:I

    iput v4, v0, LP0/n;->M:I

    iput v4, v0, LP0/n;->N:I

    iput v5, v0, LP0/n;->O:F

    iput v5, v0, LP0/n;->P:F

    iput v1, v0, LP0/n;->Q:I

    iput v1, v0, LP0/n;->R:I

    iput v1, v0, LP0/n;->S:I

    iput v1, v0, LP0/n;->T:I

    iput v4, v0, LP0/n;->U:I

    iput v4, v0, LP0/n;->V:I

    iput v4, v0, LP0/n;->W:I

    iput v4, v0, LP0/n;->X:I

    iput v2, v0, LP0/n;->Y:F

    iput v2, v0, LP0/n;->Z:F

    iput v4, v0, LP0/n;->a0:I

    iput v1, v0, LP0/n;->b0:I

    iput v4, v0, LP0/n;->c0:I

    iput-boolean v1, v0, LP0/n;->g0:Z

    iput-boolean v1, v0, LP0/n;->h0:Z

    const/4 v4, 0x1

    iput-boolean v4, v0, LP0/n;->i0:Z

    iput-object v0, p0, LP0/m;->d:LP0/n;

    new-instance v0, LP0/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v6, v0, LP0/q;->a:F

    iput v6, v0, LP0/q;->b:F

    iput v6, v0, LP0/q;->c:F

    iput v2, v0, LP0/q;->d:F

    iput v2, v0, LP0/q;->e:F

    iput v3, v0, LP0/q;->f:F

    iput v3, v0, LP0/q;->g:F

    iput v6, v0, LP0/q;->h:F

    iput v6, v0, LP0/q;->i:F

    iput v6, v0, LP0/q;->j:F

    iput-boolean v1, v0, LP0/q;->k:Z

    iput v6, v0, LP0/q;->l:F

    iput-object v0, p0, LP0/m;->e:LP0/q;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LP0/m;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(LP0/h;)V
    .locals 1

    iget-object p0, p0, LP0/m;->d:LP0/n;

    iget v0, p0, LP0/n;->g:I

    iput v0, p1, LP0/h;->d:I

    iget v0, p0, LP0/n;->h:I

    iput v0, p1, LP0/h;->e:I

    iget v0, p0, LP0/n;->i:I

    iput v0, p1, LP0/h;->f:I

    iget v0, p0, LP0/n;->j:I

    iput v0, p1, LP0/h;->g:I

    iget v0, p0, LP0/n;->k:I

    iput v0, p1, LP0/h;->h:I

    iget v0, p0, LP0/n;->l:I

    iput v0, p1, LP0/h;->i:I

    iget v0, p0, LP0/n;->m:I

    iput v0, p1, LP0/h;->j:I

    iget v0, p0, LP0/n;->n:I

    iput v0, p1, LP0/h;->k:I

    iget v0, p0, LP0/n;->o:I

    iput v0, p1, LP0/h;->l:I

    iget v0, p0, LP0/n;->p:I

    iput v0, p1, LP0/h;->p:I

    iget v0, p0, LP0/n;->q:I

    iput v0, p1, LP0/h;->q:I

    iget v0, p0, LP0/n;->r:I

    iput v0, p1, LP0/h;->r:I

    iget v0, p0, LP0/n;->s:I

    iput v0, p1, LP0/h;->s:I

    iget v0, p0, LP0/n;->C:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, LP0/n;->D:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p0, LP0/n;->E:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p0, LP0/n;->F:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, p0, LP0/n;->N:I

    iput v0, p1, LP0/h;->x:I

    iget v0, p0, LP0/n;->M:I

    iput v0, p1, LP0/h;->y:I

    iget v0, p0, LP0/n;->J:I

    iput v0, p1, LP0/h;->u:I

    iget v0, p0, LP0/n;->L:I

    iput v0, p1, LP0/h;->w:I

    iget v0, p0, LP0/n;->t:F

    iput v0, p1, LP0/h;->z:F

    iget v0, p0, LP0/n;->u:F

    iput v0, p1, LP0/h;->A:F

    iget v0, p0, LP0/n;->w:I

    iput v0, p1, LP0/h;->m:I

    iget v0, p0, LP0/n;->x:I

    iput v0, p1, LP0/h;->n:I

    iget v0, p0, LP0/n;->y:F

    iput v0, p1, LP0/h;->o:F

    iget-object v0, p0, LP0/n;->v:Ljava/lang/String;

    iput-object v0, p1, LP0/h;->B:Ljava/lang/String;

    iget v0, p0, LP0/n;->z:I

    iput v0, p1, LP0/h;->P:I

    iget v0, p0, LP0/n;->A:I

    iput v0, p1, LP0/h;->Q:I

    iget v0, p0, LP0/n;->O:F

    iput v0, p1, LP0/h;->E:F

    iget v0, p0, LP0/n;->P:F

    iput v0, p1, LP0/h;->D:F

    iget v0, p0, LP0/n;->R:I

    iput v0, p1, LP0/h;->G:I

    iget v0, p0, LP0/n;->Q:I

    iput v0, p1, LP0/h;->F:I

    iget-boolean v0, p0, LP0/n;->g0:Z

    iput-boolean v0, p1, LP0/h;->S:Z

    iget-boolean v0, p0, LP0/n;->h0:Z

    iput-boolean v0, p1, LP0/h;->T:Z

    iget v0, p0, LP0/n;->S:I

    iput v0, p1, LP0/h;->H:I

    iget v0, p0, LP0/n;->T:I

    iput v0, p1, LP0/h;->I:I

    iget v0, p0, LP0/n;->U:I

    iput v0, p1, LP0/h;->L:I

    iget v0, p0, LP0/n;->V:I

    iput v0, p1, LP0/h;->M:I

    iget v0, p0, LP0/n;->W:I

    iput v0, p1, LP0/h;->J:I

    iget v0, p0, LP0/n;->X:I

    iput v0, p1, LP0/h;->K:I

    iget v0, p0, LP0/n;->Y:F

    iput v0, p1, LP0/h;->N:F

    iget v0, p0, LP0/n;->Z:F

    iput v0, p1, LP0/h;->O:F

    iget v0, p0, LP0/n;->B:I

    iput v0, p1, LP0/h;->R:I

    iget v0, p0, LP0/n;->f:F

    iput v0, p1, LP0/h;->c:F

    iget v0, p0, LP0/n;->d:I

    iput v0, p1, LP0/h;->a:I

    iget v0, p0, LP0/n;->e:I

    iput v0, p1, LP0/h;->b:I

    iget v0, p0, LP0/n;->b:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p0, LP0/n;->c:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, LP0/n;->f0:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p1, LP0/h;->U:Ljava/lang/String;

    :cond_0
    iget v0, p0, LP0/n;->H:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p0, p0, LP0/n;->G:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, LP0/h;->a()V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, LP0/m;

    invoke-direct {v0}, LP0/m;-><init>()V

    iget-object v1, v0, LP0/m;->d:LP0/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LP0/m;->d:LP0/n;

    iget-boolean v3, v2, LP0/n;->a:Z

    iput-boolean v3, v1, LP0/n;->a:Z

    iget v3, v2, LP0/n;->b:I

    iput v3, v1, LP0/n;->b:I

    iget v3, v2, LP0/n;->c:I

    iput v3, v1, LP0/n;->c:I

    iget v3, v2, LP0/n;->d:I

    iput v3, v1, LP0/n;->d:I

    iget v3, v2, LP0/n;->e:I

    iput v3, v1, LP0/n;->e:I

    iget v3, v2, LP0/n;->f:F

    iput v3, v1, LP0/n;->f:F

    iget v3, v2, LP0/n;->g:I

    iput v3, v1, LP0/n;->g:I

    iget v3, v2, LP0/n;->h:I

    iput v3, v1, LP0/n;->h:I

    iget v3, v2, LP0/n;->i:I

    iput v3, v1, LP0/n;->i:I

    iget v3, v2, LP0/n;->j:I

    iput v3, v1, LP0/n;->j:I

    iget v3, v2, LP0/n;->k:I

    iput v3, v1, LP0/n;->k:I

    iget v3, v2, LP0/n;->l:I

    iput v3, v1, LP0/n;->l:I

    iget v3, v2, LP0/n;->m:I

    iput v3, v1, LP0/n;->m:I

    iget v3, v2, LP0/n;->n:I

    iput v3, v1, LP0/n;->n:I

    iget v3, v2, LP0/n;->o:I

    iput v3, v1, LP0/n;->o:I

    iget v3, v2, LP0/n;->p:I

    iput v3, v1, LP0/n;->p:I

    iget v3, v2, LP0/n;->q:I

    iput v3, v1, LP0/n;->q:I

    iget v3, v2, LP0/n;->r:I

    iput v3, v1, LP0/n;->r:I

    iget v3, v2, LP0/n;->s:I

    iput v3, v1, LP0/n;->s:I

    iget v3, v2, LP0/n;->t:F

    iput v3, v1, LP0/n;->t:F

    iget v3, v2, LP0/n;->u:F

    iput v3, v1, LP0/n;->u:F

    iget-object v3, v2, LP0/n;->v:Ljava/lang/String;

    iput-object v3, v1, LP0/n;->v:Ljava/lang/String;

    iget v3, v2, LP0/n;->w:I

    iput v3, v1, LP0/n;->w:I

    iget v3, v2, LP0/n;->x:I

    iput v3, v1, LP0/n;->x:I

    iget v3, v2, LP0/n;->y:F

    iput v3, v1, LP0/n;->y:F

    iget v3, v2, LP0/n;->z:I

    iput v3, v1, LP0/n;->z:I

    iget v3, v2, LP0/n;->A:I

    iput v3, v1, LP0/n;->A:I

    iget v3, v2, LP0/n;->B:I

    iput v3, v1, LP0/n;->B:I

    iget v3, v2, LP0/n;->C:I

    iput v3, v1, LP0/n;->C:I

    iget v3, v2, LP0/n;->D:I

    iput v3, v1, LP0/n;->D:I

    iget v3, v2, LP0/n;->E:I

    iput v3, v1, LP0/n;->E:I

    iget v3, v2, LP0/n;->F:I

    iput v3, v1, LP0/n;->F:I

    iget v3, v2, LP0/n;->G:I

    iput v3, v1, LP0/n;->G:I

    iget v3, v2, LP0/n;->H:I

    iput v3, v1, LP0/n;->H:I

    iget v3, v2, LP0/n;->I:I

    iput v3, v1, LP0/n;->I:I

    iget v3, v2, LP0/n;->J:I

    iput v3, v1, LP0/n;->J:I

    iget v3, v2, LP0/n;->K:I

    iput v3, v1, LP0/n;->K:I

    iget v3, v2, LP0/n;->L:I

    iput v3, v1, LP0/n;->L:I

    iget v3, v2, LP0/n;->M:I

    iput v3, v1, LP0/n;->M:I

    iget v3, v2, LP0/n;->N:I

    iput v3, v1, LP0/n;->N:I

    iget v3, v2, LP0/n;->O:F

    iput v3, v1, LP0/n;->O:F

    iget v3, v2, LP0/n;->P:F

    iput v3, v1, LP0/n;->P:F

    iget v3, v2, LP0/n;->Q:I

    iput v3, v1, LP0/n;->Q:I

    iget v3, v2, LP0/n;->R:I

    iput v3, v1, LP0/n;->R:I

    iget v3, v2, LP0/n;->S:I

    iput v3, v1, LP0/n;->S:I

    iget v3, v2, LP0/n;->T:I

    iput v3, v1, LP0/n;->T:I

    iget v3, v2, LP0/n;->U:I

    iput v3, v1, LP0/n;->U:I

    iget v3, v2, LP0/n;->V:I

    iput v3, v1, LP0/n;->V:I

    iget v3, v2, LP0/n;->W:I

    iput v3, v1, LP0/n;->W:I

    iget v3, v2, LP0/n;->X:I

    iput v3, v1, LP0/n;->X:I

    iget v3, v2, LP0/n;->Y:F

    iput v3, v1, LP0/n;->Y:F

    iget v3, v2, LP0/n;->Z:F

    iput v3, v1, LP0/n;->Z:F

    iget v3, v2, LP0/n;->a0:I

    iput v3, v1, LP0/n;->a0:I

    iget v3, v2, LP0/n;->b0:I

    iput v3, v1, LP0/n;->b0:I

    iget v3, v2, LP0/n;->c0:I

    iput v3, v1, LP0/n;->c0:I

    iget-object v3, v2, LP0/n;->f0:Ljava/lang/String;

    iput-object v3, v1, LP0/n;->f0:Ljava/lang/String;

    iget-object v3, v2, LP0/n;->d0:[I

    if-eqz v3, :cond_0

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, LP0/n;->d0:[I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, LP0/n;->d0:[I

    :goto_0
    iget-object v3, v2, LP0/n;->e0:Ljava/lang/String;

    iput-object v3, v1, LP0/n;->e0:Ljava/lang/String;

    iget-boolean v3, v2, LP0/n;->g0:Z

    iput-boolean v3, v1, LP0/n;->g0:Z

    iget-boolean v3, v2, LP0/n;->h0:Z

    iput-boolean v3, v1, LP0/n;->h0:Z

    iget-boolean v2, v2, LP0/n;->i0:Z

    iput-boolean v2, v1, LP0/n;->i0:Z

    iget-object v1, v0, LP0/m;->c:LP0/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LP0/m;->c:LP0/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, LP0/o;->a:I

    iput v3, v1, LP0/o;->a:I

    iget v3, v2, LP0/o;->b:I

    iput v3, v1, LP0/o;->b:I

    iget v3, v2, LP0/o;->d:F

    iput v3, v1, LP0/o;->d:F

    iget v2, v2, LP0/o;->c:F

    iput v2, v1, LP0/o;->c:F

    iget-object v1, v0, LP0/m;->b:LP0/p;

    iget-object v2, p0, LP0/m;->b:LP0/p;

    iget v3, v2, LP0/p;->a:I

    iput v3, v1, LP0/p;->a:I

    iget v3, v2, LP0/p;->c:F

    iput v3, v1, LP0/p;->c:F

    iget v3, v2, LP0/p;->d:F

    iput v3, v1, LP0/p;->d:F

    iget v2, v2, LP0/p;->b:I

    iput v2, v1, LP0/p;->b:I

    iget-object v1, v0, LP0/m;->e:LP0/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LP0/m;->e:LP0/q;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, LP0/q;->a:F

    iput v3, v1, LP0/q;->a:F

    iget v3, v2, LP0/q;->b:F

    iput v3, v1, LP0/q;->b:F

    iget v3, v2, LP0/q;->c:F

    iput v3, v1, LP0/q;->c:F

    iget v3, v2, LP0/q;->d:F

    iput v3, v1, LP0/q;->d:F

    iget v3, v2, LP0/q;->e:F

    iput v3, v1, LP0/q;->e:F

    iget v3, v2, LP0/q;->f:F

    iput v3, v1, LP0/q;->f:F

    iget v3, v2, LP0/q;->g:F

    iput v3, v1, LP0/q;->g:F

    iget v3, v2, LP0/q;->h:F

    iput v3, v1, LP0/q;->h:F

    iget v3, v2, LP0/q;->i:F

    iput v3, v1, LP0/q;->i:F

    iget v3, v2, LP0/q;->j:F

    iput v3, v1, LP0/q;->j:F

    iget-boolean v3, v2, LP0/q;->k:Z

    iput-boolean v3, v1, LP0/q;->k:Z

    iget v2, v2, LP0/q;->l:F

    iput v2, v1, LP0/q;->l:F

    iget p0, p0, LP0/m;->a:I

    iput p0, v0, LP0/m;->a:I

    return-object v0
.end method
