.class public final LH6/f;
.super LG5/C;
.source "SourceFile"


# instance fields
.field public a:F

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/material/snackbar/SnackbarContentLayout;

.field public final synthetic g:LH6/m;


# direct methods
.method public constructor <init>(LH6/m;IIIILcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH6/f;->g:LH6/m;

    iput p2, p0, LH6/f;->b:I

    iput p3, p0, LH6/f;->c:I

    iput p4, p0, LH6/f;->d:I

    iput p5, p0, LH6/f;->e:I

    iput-object p6, p0, LH6/f;->f:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    const/4 p1, 0x0

    iput p1, p0, LH6/f;->a:F

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget p0, p0, LH6/f;->a:F

    return p0
.end method

.method public final f(Ljava/lang/Object;F)V
    .locals 3

    check-cast p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, LH6/f;->b:I

    int-to-float v0, v0

    iget v1, p0, LH6/f;->c:I

    int-to-float v1, v1

    invoke-static {v0, v1, p1}, LG5/g2;->d(FFF)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, LH6/f;->d:I

    int-to-float v1, v1

    iget v2, p0, LH6/f;->e:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, LG5/g2;->d(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, LH6/f;->g:LH6/m;

    iget-object v2, p0, LH6/f;->f:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v1, v0, p1, v2}, LH6/m;->f(IILandroid/view/View;)V

    iput p2, p0, LH6/f;->a:F

    return-void
.end method
