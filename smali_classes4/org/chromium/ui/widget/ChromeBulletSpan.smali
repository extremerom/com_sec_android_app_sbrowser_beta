.class public Lorg/chromium/ui/widget/ChromeBulletSpan;
.super Landroid/text/style/BulletSpan;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mXOffset:I


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 13

    move-object v0, p0

    iget v1, v0, Lorg/chromium/ui/widget/ChromeBulletSpan;->mXOffset:I

    add-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-super/range {v0 .. v12}, Landroid/text/style/BulletSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    return-void
.end method
