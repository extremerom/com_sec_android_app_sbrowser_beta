.class public final Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;",
        "",
        "<init>",
        "()V",
        "Companion",
        "VexFrameworkSDK_forInternalRelease"
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
.field public static final Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$copyBitmapToBitmapNative(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->copyBitmapToBitmapNative(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method public static final synthetic access$copyBitmapToIntArrayNative(Landroid/graphics/Bitmap;[IIIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->copyBitmapToIntArrayNative(Landroid/graphics/Bitmap;[IIIII)V

    return-void
.end method

.method public static final synthetic access$copyByteArrayToBitmapNative([BLandroid/graphics/Bitmap;IIIIII)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->copyByteArrayToBitmapNative([BLandroid/graphics/Bitmap;IIIIII)V

    return-void
.end method

.method public static final synthetic access$copyIntArrayToBitmapNative2([ILandroid/graphics/Bitmap;IIIII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->copyIntArrayToBitmapNative2([ILandroid/graphics/Bitmap;IIIII)V

    return-void
.end method

.method public static final convertToBitmap([BLandroid/util/Size;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;->convertToBitmap([BLandroid/util/Size;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V
    .locals 7
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method public static final copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static final copyBitmap(Landroid/graphics/Bitmap;[I)V
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;->copyBitmap(Landroid/graphics/Bitmap;[I)V

    return-void
.end method

.method public static final copyBitmap(Landroid/graphics/Bitmap;[IIIII)V
    .locals 7
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;->copyBitmap(Landroid/graphics/Bitmap;[IIIII)V

    return-void
.end method

.method public static final copyBitmap(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;->copyBitmap(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V

    return-void
.end method

.method public static final copyBitmap([ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;->copyBitmap([ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final copyBitmap([ILandroid/graphics/Bitmap;IIIII)V
    .locals 8
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;->copyBitmap([ILandroid/graphics/Bitmap;IIIII)V

    return-void
.end method

.method public static final copyBitmap([ILandroid/graphics/Bitmap;Landroid/graphics/Rect;I)V
    .locals 1
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;->copyBitmap([ILandroid/graphics/Bitmap;Landroid/graphics/Rect;I)V

    return-void
.end method

.method private static final native copyBitmapToBitmapNative(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIII)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native copyBitmapToIntArrayNative(Landroid/graphics/Bitmap;[IIIII)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native copyByteArrayToBitmapNative([BLandroid/graphics/Bitmap;IIIIII)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native copyIntArrayToBitmapNative2([ILandroid/graphics/Bitmap;IIIII)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap;->Companion:Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/vexfwk/bitmap/VexFwkBitmap$Companion;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
