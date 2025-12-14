.class public abstract Lk9/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/graphics/PointF;

.field public static final b:I

.field public static c:Landroid/graphics/Bitmap;

.field public static final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lk9/y;->a:Landroid/graphics/PointF;

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lk9/y;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lk9/y;->d:F

    return-void
.end method
