.class public Lorg/chromium/content/browser/MotionEventSynthesizerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/MotionEventSynthesizer;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDownTimeInMs:J

.field private final mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private final mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private final mTarget:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mTarget:Landroid/view/View;

    const/16 p1, 0x10

    new-array v0, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v0, p0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array p1, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object p1, p0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method public static create(Landroid/view/View;)Lorg/chromium/content/browser/MotionEventSynthesizerImpl;
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private injectHover(IIJ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x6

    if-ne v2, v1, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    :goto_0
    const/4 v3, 0x7

    if-ne v3, v1, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    iget-wide v4, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mDownTimeInMs:J

    iget-object v10, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v11, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v6, p3

    move/from16 v9, p2

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method


# virtual methods
.method public inject(IIIJ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v3, p4

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    move/from16 v6, p2

    invoke-direct {v0, v1, v6, v3, v4}, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->injectHover(IIJ)V

    goto/16 :goto_3

    :pswitch_1
    move/from16 v6, p2

    iget-wide v1, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mDownTimeInMs:J

    iget-object v7, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v5, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v3, p4

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_3

    :pswitch_2
    if-nez p3, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x106

    move v5, v1

    :goto_0
    iget-wide v6, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mDownTimeInMs:J

    add-int/lit8 v8, p3, 0x1

    iget-object v9, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v10, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide v1, v6

    move-wide/from16 v3, p4

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move v12, v14

    move/from16 v13, v17

    move/from16 v14, v18

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_3

    :pswitch_3
    iget-wide v1, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mDownTimeInMs:J

    iget-object v7, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v3, p4

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_3

    :pswitch_4
    move/from16 v6, p2

    iget-wide v1, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mDownTimeInMs:J

    iget-object v7, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v3, p4

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_3

    :pswitch_5
    if-nez p3, :cond_1

    const/4 v1, 0x0

    :goto_1
    move v5, v1

    goto :goto_2

    :cond_1
    const/16 v1, 0x105

    goto :goto_1

    :goto_2
    iput-wide v3, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mDownTimeInMs:J

    add-int/lit8 v6, p3, 0x1

    iget-object v7, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p4

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPointer(IFFI)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->setPointer(IFFII)V

    return-void
.end method

.method public setPointer(IFFII)V
    .locals 1

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iget-object p2, p0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aput-object v0, p2, p1

    new-instance p2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {p2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    iput p4, p2, Landroid/view/MotionEvent$PointerProperties;->id:I

    iput p5, p2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget-object p0, p0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aput-object p2, p0, p1

    return-void
.end method

.method public setScrollDeltas(FFFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, v0}, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->setPointer(IFFI)V

    iget-object p1, p0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object p1, p1, v0

    const/16 p2, 0xa

    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    iget-object p0, p0, Lorg/chromium/content/browser/MotionEventSynthesizerImpl;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object p0, p0, v0

    const/16 p1, 0x9

    invoke-virtual {p0, p1, p4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    return-void
.end method
