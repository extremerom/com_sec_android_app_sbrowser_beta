.class public final LY2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/view/View;

.field public final c:[F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Landroid/view/View;[F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LY2/s;->a:Landroid/graphics/Matrix;

    iput-object p1, p0, LY2/s;->b:Landroid/view/View;

    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, LY2/s;->c:[F

    const/4 p2, 0x2

    aget p2, p1, p2

    iput p2, p0, LY2/s;->d:F

    const/4 p2, 0x5

    aget p1, p1, p2

    iput p1, p0, LY2/s;->e:F

    invoke-virtual {p0}, LY2/s;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x2

    iget v1, p0, LY2/s;->d:F

    iget-object v2, p0, LY2/s;->c:[F

    aput v1, v2, v0

    const/4 v0, 0x5

    iget v1, p0, LY2/s;->e:F

    aput v1, v2, v0

    iget-object v0, p0, LY2/s;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setValues([F)V

    sget-object v1, LY2/u0;->a:LY2/d;

    iget-object p0, p0, LY2/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
