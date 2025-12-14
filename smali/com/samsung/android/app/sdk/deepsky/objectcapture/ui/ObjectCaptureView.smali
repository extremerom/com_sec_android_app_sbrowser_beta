.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u0095\u00012\u00020\u0001:\u0002\u0095\u0001B\u0013\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001d\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B%\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\r\u0010\u0018\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001d\u0010#\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\'\u0010(\u001a\u00020\u000e2\u0008\u0010%\u001a\u0004\u0018\u00010!2\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020\u001f\u00a2\u0006\u0004\u0008(\u0010)JG\u00103\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\t2\u0008\u0010/\u001a\u0004\u0018\u00010.2\u0006\u00100\u001a\u00020.2\u0006\u00101\u001a\u00020.2\u0006\u00102\u001a\u00020.\u00a2\u0006\u0004\u00083\u00104J\r\u00105\u001a\u00020\u000e\u00a2\u0006\u0004\u00085\u0010\u0016J\u000f\u00106\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u00086\u0010\u0016J\u001f\u00108\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u001f2\u0006\u00107\u001a\u00020!H\u0002\u00a2\u0006\u0004\u00088\u0010$J\u000f\u00109\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u00089\u0010\u0016JG\u0010E\u001a\u00020\u000e2\u0008\u0010;\u001a\u0004\u0018\u00010:2\u0008\u0010=\u001a\u0004\u0018\u00010<2\u0008\u0010?\u001a\u0004\u0018\u00010>2\u0006\u0010@\u001a\u00020\t2\u0006\u0010B\u001a\u00020A2\u0008\u0010D\u001a\u0004\u0018\u00010CH\u0002\u00a2\u0006\u0004\u0008E\u0010FJ\u0017\u0010H\u001a\u00020\u000e2\u0006\u0010G\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008H\u0010IJ\'\u0010K\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020*2\u0006\u0010J\u001a\u00020*2\u0006\u00102\u001a\u00020.H\u0002\u00a2\u0006\u0004\u0008K\u0010LJ\'\u0010N\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020*2\u0006\u0010M\u001a\u00020*2\u0006\u0010J\u001a\u00020*H\u0002\u00a2\u0006\u0004\u0008N\u0010OJ/\u0010T\u001a\u00020*2\u0006\u0010P\u001a\u00020*2\u0006\u0010Q\u001a\u00020\t2\u0006\u0010R\u001a\u00020\t2\u0006\u0010S\u001a\u00020.H\u0002\u00a2\u0006\u0004\u0008T\u0010UR\u0018\u0010W\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0018\u0010Z\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0018\u0010\\\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0018\u0010^\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0018\u0010a\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0018\u0010d\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0016\u0010f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0016\u0010h\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010gR\u0016\u0010i\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010gR\u0018\u0010j\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0018\u0010l\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0018\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010nR\u0018\u0010p\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0018\u0010r\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010qR\u0016\u0010s\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010gR\u0016\u0010t\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010gR\u0016\u0010u\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0016\u0010w\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010vR\u0016\u0010x\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010vR\u0016\u0010y\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010vR\"\u0010z\u001a\u00020C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010{\u001a\u0004\u0008|\u0010}\"\u0004\u0008~\u0010\u007fR&\u0010\u0080\u0001\u001a\u00020C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0080\u0001\u0010{\u001a\u0005\u0008\u0081\u0001\u0010}\"\u0005\u0008\u0082\u0001\u0010\u007fR&\u0010\u0083\u0001\u001a\u00020C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0083\u0001\u0010{\u001a\u0005\u0008\u0084\u0001\u0010}\"\u0005\u0008\u0085\u0001\u0010\u007fR)\u0010\u0086\u0001\u001a\u00020.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001\"\u0006\u0008\u008a\u0001\u0010\u008b\u0001R)\u0010\u008c\u0001\u001a\u00020.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008c\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u008d\u0001\u0010\u0089\u0001\"\u0006\u0008\u008e\u0001\u0010\u008b\u0001R)\u0010\u008f\u0001\u001a\u00020.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008f\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0089\u0001\"\u0006\u0008\u0091\u0001\u0010\u008b\u0001R\u0018\u0010\u0093\u0001\u001a\u00030\u0092\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001\u00a8\u0006\u0096\u0001"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;",
        "listener",
        "Ldb/r;",
        "setViewListener",
        "(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;)V",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;",
        "view",
        "setDimView",
        "(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;)V",
        "startAnimation",
        "()V",
        "startTabAnimation",
        "fadeOutAnimation",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;",
        "setOnStartDragListener",
        "(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;)V",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;",
        "setOnMoveClipListener",
        "(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;)V",
        "",
        "scaleFactor",
        "Landroid/graphics/Rect;",
        "dndRect",
        "startScaleDownAnimation",
        "(FLandroid/graphics/Rect;)V",
        "scaledObjectRectInScreen",
        "translationX",
        "translationY",
        "setDistanceOfTouchFromCenter",
        "(Landroid/graphics/Rect;FF)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "x",
        "y",
        "",
        "isSelectionMode",
        "useOutGlowLayer",
        "useParticleLayer",
        "isSelectAll",
        "setCapturedInfo",
        "(Landroid/graphics/Bitmap;IILjava/lang/Boolean;ZZZ)V",
        "recycleBitmap",
        "init",
        "objectRectForDndInScreen",
        "startDragAndDrop",
        "setDragListener",
        "Landroid/content/ClipData;",
        "data",
        "Landroid/view/View$DragShadowBuilder;",
        "shadowBuilder",
        "",
        "myLocalState",
        "flag",
        "Landroid/graphics/RectF;",
        "selectedArea",
        "Landroid/graphics/Point;",
        "location",
        "startDragAndDropWithLocation",
        "(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;ILandroid/graphics/RectF;Landroid/graphics/Point;)V",
        "scale",
        "scaleDownAndMove",
        "(F)V",
        "outGlowBitmap",
        "useOutGlowLayerView",
        "(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V",
        "particleBitmap",
        "useParticleLayerView",
        "(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V",
        "source",
        "size",
        "space",
        "shouldDrawOriginal",
        "getOutGlowBitmap",
        "(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;",
        "maskedImageView",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DummyImageView;",
        "dummyImageView",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DummyImageView;",
        "dimView",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;",
        "frameLayout",
        "Landroid/widget/FrameLayout;",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;",
        "particleLayerView",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;",
        "outGlowLayerView",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;",
        "shadowSpace",
        "I",
        "particleSpace",
        "extraSpace",
        "dragListener",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;",
        "moveClipListener",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;",
        "Landroid/animation/AnimatorSet;",
        "zoomAnimatorSet",
        "Landroid/animation/AnimatorSet;",
        "lightAnimatorSet",
        "distanceOfTouchFromCenterX",
        "distanceOfTouchFromCenterY",
        "toGoFactorX",
        "F",
        "toGoFactorY",
        "moveFromScaleAnimationX",
        "moveFromScaleAnimationY",
        "currentPoint",
        "Landroid/graphics/Point;",
        "getCurrentPoint",
        "()Landroid/graphics/Point;",
        "setCurrentPoint",
        "(Landroid/graphics/Point;)V",
        "lastTouchPoint",
        "getLastTouchPoint",
        "setLastTouchPoint",
        "lastTranslatePoint",
        "getLastTranslatePoint",
        "setLastTranslatePoint",
        "multiTapMode",
        "Z",
        "getMultiTapMode",
        "()Z",
        "setMultiTapMode",
        "(Z)V",
        "touchProcessing",
        "getTouchProcessing",
        "setTouchProcessing",
        "dragging",
        "getDragging",
        "setDragging",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "attachStateChangeListener",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "Companion",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ObjectCaptureView"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final attachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentPoint:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dimView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private distanceOfTouchFromCenterX:I

.field private distanceOfTouchFromCenterY:I

.field private dragListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dragging:Z

.field private dummyImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DummyImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private extraSpace:I

.field private frameLayout:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastTouchPoint:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastTranslatePoint:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lightAnimatorSet:Landroid/animation/AnimatorSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private listener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private maskedImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moveClipListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moveFromScaleAnimationX:F

.field private moveFromScaleAnimationY:F

.field private multiTapMode:Z

.field private outGlowLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private particleLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private particleSpace:I

.field private shadowSpace:I

.field private toGoFactorX:F

.field private toGoFactorY:F

.field private touchProcessing:Z

.field private zoomAnimatorSet:Landroid/animation/AnimatorSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->currentPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTouchPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTranslatePoint:Landroid/graphics/Point;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->touchProcessing:Z

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$attachStateChangeListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$attachStateChangeListener$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->attachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->currentPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTouchPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTranslatePoint:Landroid/graphics/Point;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->touchProcessing:Z

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$attachStateChangeListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$attachStateChangeListener$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->attachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->currentPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTouchPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTranslatePoint:Landroid/graphics/Point;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->touchProcessing:Z

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$attachStateChangeListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$attachStateChangeListener$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->attachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->startScaleDownAnimation$lambda$3$lambda$2(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->listener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;

    return-object p0
.end method

.method public static final synthetic access$startDragAndDrop(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;FLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->startDragAndDrop(FLandroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setDragListener$lambda$1(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method private final getOutGlowBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$color;->glow_color:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    const/high16 v4, 0x40800000    # 4.0f

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "extractAlpha(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p0, p3

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float p3, p2, p0

    invoke-virtual {v1, v3, p3, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v3, p2, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-float/2addr p0, p2

    invoke-virtual {v1, v3, p0, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v3, p2, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v1, p1, p2, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private final init()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$layout;->objectcaptureview_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$id;->lighting_gradient:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->maskedImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$id;->dummy_layer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DummyImageView;

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dummyImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DummyImageView;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$id;->framelayout_for_capture_animation:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->frameLayout:Landroid/widget/FrameLayout;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$id;->particle_layer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->particleLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$id;->glow_layer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->outGlowLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->attachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final scaleDownAndMove(F)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTranslatePoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->currentPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTouchPoint:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v4

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v2

    iget v2, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTouchPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->currentPoint:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->toGoFactorX:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->moveFromScaleAnimationX:F

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->toGoFactorY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->moveFromScaleAnimationY:F

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTranslatePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTranslatePoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->moveFromScaleAnimationY:F

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private final setDragListener()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method private static final setDragListener$lambda$1(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDrag. dragEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ObjectCaptureView"

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dragging:Z

    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ACTION_DRAG_ENDED : Drag item is consumed"

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->listener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;->clearObjectCaptureView()V

    goto :goto_0

    :cond_1
    const-string p1, "ACTION_DRAG_ENDED : Nobody take care drag event."

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->listener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, v3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;->showObjectCaptureResult(Z)V

    :cond_2
    :goto_0
    return v3

    :cond_3
    const-string p1, "ACTION_DROP in ObjectCaptureView"

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dragging:Z

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->listener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, v3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;->showObjectCaptureResult(Z)V

    :cond_4
    return v3

    :cond_5
    iput-boolean v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dragging:Z

    :goto_1
    return v1
.end method

.method private final startDragAndDrop(FLandroid/graphics/Rect;)V
    .locals 10

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setDragListener()V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dragListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;

    if-eqz v0, :cond_0

    const-string v1, "ObjectCaptureView"

    const-string v2, "startDragAndDrop: OnStartDragListener. onStarDrag()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;->onStarDrag()Landroid/content/ClipData;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDragShadowBuilder;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDragShadowBuilder;-><init>(Landroid/view/View;F)V

    new-instance v8, Landroid/graphics/RectF;

    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-direct {v8, p1, v0, v1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v9, 0x0

    const v7, 0x400303

    move-object v3, p0

    move-object v6, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->startDragAndDropWithLocation(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;ILandroid/graphics/RectF;Landroid/graphics/Point;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->moveClipListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;->onMoveClip()V

    :cond_0
    return-void
.end method

.method private final startDragAndDropWithLocation(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;ILandroid/graphics/RectF;Landroid/graphics/Point;)V
    .locals 9

    const-string v0, "ObjectCaptureView"

    const-string v1, "startDragAndDropWithLocation: selectedArea = "

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Landroid/view/View;

    const-string v2, "hidden_startDragAndDrop"

    const-class v3, Landroid/content/ClipData;

    const-class v4, Landroid/view/View$DragShadowBuilder;

    const-class v5, Ljava/lang/Object;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/graphics/RectF;

    const-class v8, Landroid/graphics/Point;

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    move-object v8, p6

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "failed to call hidden_startDragAndDrop"

    invoke-static {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static final startScaleDownAnimation$lambda$3$lambda$2(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "valueAnimator"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->scaleDownAndMove(F)V

    return-void
.end method

.method private final useOutGlowLayerView(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->shadowSpace:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->outGlowLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->extraSpace:I

    iget v3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->shadowSpace:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {v1, p2, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;->updateMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->outGlowLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;->updateSelectAll(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->outGlowLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;->startAnimation()V

    :cond_0
    return-void
.end method

.method private final useParticleLayerView(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->shadowSpace:I

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->particleSpace:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->extraSpace:I

    add-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->particleLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->extraSpace:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {v2, p2, p3, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;->updateMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->particleLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p3, "copy(...)"

    invoke-static {p1, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;->addShadow(Landroid/graphics/Bitmap;I)V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->particleLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;->startAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final fadeOutAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$animator;->capture_bounce_out_animator:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method public final getCurrentPoint()Landroid/graphics/Point;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->currentPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public final getDragging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dragging:Z

    return p0
.end method

.method public final getLastTouchPoint()Landroid/graphics/Point;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTouchPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public final getLastTranslatePoint()Landroid/graphics/Point;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTranslatePoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public final getMultiTapMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->multiTapMode:Z

    return p0
.end method

.method public final getTouchProcessing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->touchProcessing:Z

    return p0
.end method

.method public final recycleBitmap()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->particleLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->outGlowLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->maskedImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;->recycleBitmap()V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dummyImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DummyImageView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DummyImageView;->recycleBitmap()V

    :cond_3
    return-void
.end method

.method public final setCapturedInfo(Landroid/graphics/Bitmap;IILjava/lang/Boolean;ZZZ)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$dimen;->extra_space_for_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->shadowSpace:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$dimen;->particle_extra_space_for_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->particleSpace:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$dimen;->extra_space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->extraSpace:I

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->shadowSpace:I

    add-int/2addr v1, v0

    if-eqz p6, :cond_0

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->particleSpace:I

    add-int/2addr v1, v0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p2, v2

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_2

    const-string p2, "useOutGlow"

    const-string p3, "ObjectCaptureView"

    invoke-static {p3, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->shadowSpace:I

    const/4 p5, 0x1

    invoke-direct {p0, p1, v1, p2, p5}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->getOutGlowBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0, p5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "copy(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, p7}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->useOutGlowLayerView(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    if-eqz p6, :cond_1

    const-string p6, "useParticle"

    invoke-static {p3, p6}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->shadowSpace:I

    iget p6, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->particleSpace:I

    add-int/2addr p3, p6

    const/4 p6, 0x0

    invoke-direct {p0, p1, v1, p3, p6}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->getOutGlowBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3, v0, p5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p6

    invoke-static {p6, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p5

    invoke-static {p5, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p6, p5}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->useParticleLayerView(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-static {p4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->maskedImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->shadowSpace:I

    invoke-virtual {p2, p1, v1, p3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;->setMask(Landroid/graphics/Bitmap;II)V

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dummyImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DummyImageView;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DummyImageView;->setMask(Landroid/graphics/Bitmap;I)V

    sget-boolean p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_AFTER_ONEUI_7_0:Z

    if-eqz p1, :cond_3

    if-nez p7, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->maskedImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;->startAnimation()V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dimView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;->startLightDimAnimation()V

    :cond_4
    return-void
.end method

.method public final setCurrentPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->currentPoint:Landroid/graphics/Point;

    return-void
.end method

.method public final setDimView(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dimView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;

    return-void
.end method

.method public final setDistanceOfTouchFromCenter(Landroid/graphics/Rect;FF)V
    .locals 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ObjectCaptureView"

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->a(IIII)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, p1, v3, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->a(IIII)I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTouchPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v1

    float-to-int p2, p2

    add-int/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->distanceOfTouchFromCenterX:I

    iget p2, v2, Landroid/graphics/Point;->y:I

    sub-int p1, p2, p1

    float-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->distanceOfTouchFromCenterY:I

    int-to-float p3, v1

    const/4 v1, 0x1

    int-to-float v1, v1

    sget v2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDrawHelperImpl;->captureImageScaleFactor:F

    sub-float v4, v1, v2

    div-float/2addr p3, v4

    iput p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->toGoFactorX:F

    int-to-float p1, p1

    sub-float/2addr v1, v2

    div-float/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->toGoFactorY:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "setDistanceOfTouchFromCenter lastTouchPoint: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " lastTouchPoint: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->distanceOfTouchFromCenterX:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setDistanceOfTouchFromCenter distanceOfTouchFromCenterX: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->maskedImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;

    if-eqz p1, :cond_1

    new-instance p2, Landroid/graphics/PointF;

    iget p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->distanceOfTouchFromCenterX:I

    int-to-float p3, p3

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->distanceOfTouchFromCenterY:I

    int-to-float v0, v0

    invoke-direct {p2, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;->setStartPoint(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    const-string p1, "can\'t setDistanceOfTouchFromCenter. objectInitRect is null"

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->moveFromScaleAnimationX:F

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->moveFromScaleAnimationY:F

    return-void
.end method

.method public final setDragging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dragging:Z

    return-void
.end method

.method public final setLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTouchPoint:Landroid/graphics/Point;

    return-void
.end method

.method public final setLastTranslatePoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lastTranslatePoint:Landroid/graphics/Point;

    return-void
.end method

.method public final setMultiTapMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->multiTapMode:Z

    return-void
.end method

.method public final setOnMoveClipListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->moveClipListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;

    return-void
.end method

.method public final setOnStartDragListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dragListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;

    return-void
.end method

.method public final setTouchProcessing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->touchProcessing:Z

    return-void
.end method

.method public final setViewListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->listener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureViewListener;

    return-void
.end method

.method public final startAnimation()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$animator;->capture_zoom_animator:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.animation.AnimatorSet"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->zoomAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->zoomAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    sget-boolean v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->SUPPORT_AFTER_ONEUI_7_0:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$animator;->capture_light_animator:I

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lightAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->maskedImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dimView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;->startLightDimAnimation()V

    :cond_1
    return-void
.end method

.method public final startScaleDownAnimation(FLandroid/graphics/Rect;)V
    .locals 5
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    const-string v1, "dndRect"

    invoke-static {p2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ObjectCaptureView"

    const-string v2, "start scale down animation!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->zoomAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->lightAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->dimView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/DimView;->startRemoveDimAnimation()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->outGlowLayerView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/OutGlowLayerView;->endTimeAnimation()V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->maskedImageView:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/MaskedImageView;

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$animator;->capture_scale_down_animator:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.animation.ObjectAnimator"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/animation/ObjectAnimator;

    new-array v2, v0, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDrawHelperImpl;->captureImageScaleFactor:F

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    new-instance v2, LK6/i;

    invoke-direct {v2, v0, p0}, LK6/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$startScaleDownAnimation$1$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView$startScaleDownAnimation$1$2;-><init>(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;FLandroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final startTabAnimation()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/R$animator;->capture_bounce_in_animator:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.animation.AnimatorSet"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->zoomAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->zoomAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
