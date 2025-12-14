.class public Lorg/chromium/content/browser/input/ImeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static checkCondition(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static checkCondition(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static checkOnUiThread()V
    .locals 2

    const-string v0, "Should be on UI thread."

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/ImeUtils;->checkCondition(Ljava/lang/String;Z)V

    return-void
.end method

.method public static computeEditorInfo(IIIIIILjava/lang/String;Landroid/view/inputmethod/EditorInfo;)V
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p7

    const/16 v4, 0xa1

    iput v4, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_0

    const v4, 0x800a1

    iput v4, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_0
    const/4 v4, 0x2

    const/16 v6, 0x2002

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/16 v9, 0xd1

    const/4 v10, 0x4

    const/16 v11, 0x11

    const/4 v12, 0x7

    const/16 v13, 0xe1

    const/high16 v14, 0x20000

    const/4 v15, 0x3

    const/4 v5, 0x1

    if-nez v2, :cond_8

    if-ne v0, v5, :cond_1

    and-int/lit8 v6, v1, 0x8

    if-nez v6, :cond_f

    iget v6, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_1

    :cond_1
    const/16 v5, 0xe

    if-eq v0, v5, :cond_7

    const/16 v5, 0xf

    if-ne v0, v5, :cond_2

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    iput v13, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_3
    if-ne v0, v12, :cond_4

    iput v11, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_4
    if-ne v0, v10, :cond_5

    iput v9, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_5
    if-ne v0, v8, :cond_6

    iput v15, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_6
    if-ne v0, v7, :cond_f

    iput v6, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_7
    :goto_0
    iget v5, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int v6, v5, v14

    iput v6, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v1, 0x8

    if-nez v6, :cond_f

    const v6, 0x28000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_8
    if-eq v2, v15, :cond_e

    if-eq v2, v10, :cond_d

    if-eq v2, v7, :cond_c

    if-eq v2, v8, :cond_a

    if-eq v2, v12, :cond_9

    iget v5, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int v6, v5, v14

    iput v6, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v1, 0x8

    if-nez v6, :cond_f

    const v6, 0x28000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_9
    iput v6, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_a
    iput v4, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eq v0, v4, :cond_b

    and-int/lit16 v5, v1, 0x1000

    if-eqz v5, :cond_f

    :cond_b
    const/16 v5, 0x12

    iput v5, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_c
    iput v9, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_d
    iput v11, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    :cond_e
    iput v15, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_f
    :goto_1
    iget v5, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v6, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v6, v14

    if-eqz v6, :cond_10

    move/from16 v7, p3

    const/4 v6, 0x1

    goto :goto_2

    :cond_10
    const/4 v6, 0x0

    move/from16 v7, p3

    :goto_2
    invoke-static {v0, v1, v2, v7, v6}, Lorg/chromium/content/browser/input/ImeUtils;->getImeAction(IIIIZ)I

    move-result v2

    or-int/2addr v2, v5

    iput v2, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_11

    iget v2, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_11
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_12

    iget v2, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_12
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_13

    iget v2, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_13
    :goto_3
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_14

    iget v1, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_14

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    const/16 v0, 0x91

    iput v0, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_14
    :goto_4
    move/from16 v0, p4

    goto :goto_5

    :cond_15
    if-ne v0, v4, :cond_14

    iput v13, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_4

    :goto_5
    iput v0, v3, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move/from16 v0, p5

    iput v0, v3, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    move-object/from16 v0, p6

    invoke-static {v3, v0}, LG5/z3;->c(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static getImeAction(IIIIZ)I
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-nez p3, :cond_2

    if-nez p2, :cond_0

    if-ne p0, v3, :cond_0

    :pswitch_0
    move v0, v3

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    :pswitch_1
    move v0, v2

    goto :goto_0

    :cond_1
    and-int/lit16 p0, p1, 0x400

    if-eqz p0, :cond_3

    :pswitch_2
    move v0, v1

    goto :goto_0

    :cond_2
    packed-switch p3, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x6

    :cond_3
    :goto_0
    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
