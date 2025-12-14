.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/utils/RectUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008J&\u0010\u0004\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/utils/RectUtil;",
        "",
        "<init>",
        "()V",
        "getScaledRect",
        "Landroid/graphics/RectF;",
        "rect",
        "scaleFactor",
        "",
        "offsetX",
        "offsetY",
        "Landroid/graphics/Rect;",
        "deepsky-sdk-objectcapture-8.5.4_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/utils/RectUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/utils/RectUtil;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/utils/RectUtil;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/utils/RectUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/utils/RectUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScaledRect(Landroid/graphics/Rect;FFF)Landroid/graphics/Rect;
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "rect"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p3

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, p4

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, p3

    float-to-int p3, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p1, p4

    float-to-int p1, p1

    invoke-direct {p0, v0, v1, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public final getScaledRect(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "rect"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p2

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p2

    add-float/2addr v1, p4

    iget v2, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p2

    add-float/2addr v2, p3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p1, p2

    add-float/2addr p1, p4

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method
