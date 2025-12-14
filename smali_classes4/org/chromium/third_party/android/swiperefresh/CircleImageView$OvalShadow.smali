.class Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/third_party/android/swiperefresh/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleDiameter:I

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I

.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;


# direct methods
.method public constructor <init>(Lorg/chromium/third_party/android/swiperefresh/CircleImageView;II)V
    .locals 7

    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    iput p2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowRadius:I

    iput p3, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    new-instance p1, Landroid/graphics/RadialGradient;

    iget p2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    int-to-float p3, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p3, v0

    int-to-float p2, p2

    div-float v2, p2, v0

    iget p2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowRadius:I

    int-to-float v3, p2

    const/high16 p2, 0x3d000000    # 0.03125f

    const/4 p3, 0x0

    filled-new-array {p2, p3}, [I

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowRadius:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-static {v3}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->b(Lorg/chromium/third_party/android/swiperefresh/CircleImageView;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mOuterPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mOuterPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-static {v5}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->a(Lorg/chromium/third_party/android/swiperefresh/CircleImageView;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mOuterPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iget-object v3, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-static {v3}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->b(Lorg/chromium/third_party/android/swiperefresh/CircleImageView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget p0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-virtual {p1, v0, v1, p0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
