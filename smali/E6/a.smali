.class public final LE6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, LE6/a;->a:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    const/16 v2, 0x44

    invoke-static {v1, v2}, LX0/a;->e(II)I

    move-result v2

    iput v2, p0, LE6/a;->b:I

    const/16 v2, 0x14

    invoke-static {v1, v2}, LX0/a;->e(II)I

    const/4 v2, 0x0

    invoke-static {v1, v2}, LX0/a;->e(II)I

    iget-object v1, p0, LE6/a;->a:Landroid/graphics/Paint;

    iget p0, p0, LE6/a;->b:I

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    return-void
.end method
