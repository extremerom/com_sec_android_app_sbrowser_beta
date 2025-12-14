.class public abstract Ln9/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln9/a;

.field public static b:Landroid/graphics/Bitmap;

.field public static c:Landroid/graphics/Bitmap;

.field public static final d:I

.field public static final e:I

.field public static final f:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ln9/a;->VIEW:Ln9/a;

    sput-object v0, Ln9/h;->a:Ln9/a;

    const v0, 0x7f0803bc

    sput v0, Ln9/h;->d:I

    const v0, 0x7f08021a

    sput v0, Ln9/h;->e:I

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Ln9/h;->f:Landroid/graphics/PointF;

    return-void
.end method
