.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 X2\u00020\u0001:\u0001XB{\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0010\u001a\u00020\u000c\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u0006\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010 \u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008\"\u0010#J3\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00060(2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00060$2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010-\u001a\u00020\u00182\u0006\u0010,\u001a\u00020+2\u0006\u0010&\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u001f\u00101\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020\u001c2\u0006\u00100\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00081\u00102J\u0017\u00104\u001a\u0002032\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u00084\u00105J-\u00108\u001a\u00020\u001f2\u0006\u00106\u001a\u00020\n2\u0006\u00107\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u00088\u00109J\u0015\u0010:\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008:\u0010;J\r\u0010<\u001a\u00020\u001f\u00a2\u0006\u0004\u0008<\u0010#J\u0017\u0010>\u001a\u00020\u001f2\u0008\u0010=\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008>\u0010?J\u0017\u0010@\u001a\u00020\u001f2\u0008\u0010=\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008@\u0010AR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010BR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010CR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010DR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010ER\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010FR\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010GR\u0014\u0010\u000e\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010GR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010GR\u0014\u0010\u0010\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010GR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010HR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010IR\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010JR\u0014\u0010\u0017\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010DR\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010KR\u001d\u0010N\u001a\u0008\u0012\u0004\u0012\u00020M0L8\u0006\u00a2\u0006\u000c\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010QR$\u0010R\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010K\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR\u0016\u0010W\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010C\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "imageRatio",
        "Landroid/graphics/Point;",
        "centerOffset",
        "Landroid/view/ViewGroup;",
        "parentView",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;",
        "objectResult",
        "",
        "isSelectionMode",
        "useOutGlowLayerView",
        "useParticleLayerView",
        "isMultiTapMode",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;",
        "dragListener",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;",
        "moveClipListener",
        "",
        "index",
        "point",
        "Landroid/graphics/Rect;",
        "cropRect",
        "<init>",
        "(Landroid/content/Context;FLandroid/graphics/Point;Landroid/view/ViewGroup;Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;ZZZZLcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;ILandroid/graphics/Point;Landroid/graphics/Rect;)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "rect",
        "Ldb/r;",
        "updateScaledObjectRectInScreen",
        "(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V",
        "calcCaptureImageScaleFactor",
        "()V",
        "",
        "points",
        "ratio",
        "offset",
        "",
        "fixDimensions",
        "([Landroid/graphics/Point;FLandroid/graphics/Point;)Ljava/util/List;",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;",
        "oi",
        "getRect",
        "(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;F)Landroid/graphics/Rect;",
        "source",
        "scale",
        "resizeBitmapByScale",
        "(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap$Config;",
        "getConfig",
        "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;",
        "result",
        "idx",
        "updateObjectView",
        "(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;ILandroid/graphics/Point;Landroid/graphics/Rect;)V",
        "startAnimation",
        "(I)V",
        "clearViewList",
        "listener",
        "setOnStartDragListener",
        "(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;)V",
        "setOnMoveClipListener",
        "(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;)V",
        "Landroid/content/Context;",
        "F",
        "Landroid/graphics/Point;",
        "Landroid/view/ViewGroup;",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;",
        "Z",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;",
        "I",
        "Landroid/graphics/Rect;",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;",
        "objectCaptureViewList",
        "Ljava/util/List;",
        "getObjectCaptureViewList",
        "()Ljava/util/List;",
        "scaledObjectRectInScreen",
        "getScaledObjectRectInScreen",
        "()Landroid/graphics/Rect;",
        "setScaledObjectRectInScreen",
        "(Landroid/graphics/Rect;)V",
        "scaleFactor",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SELECT_ALL_INDEX:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MultiObjectViewManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final centerOffset:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cropRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dragListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final imageRatio:F

.field private final index:I

.field private final isMultiTapMode:Z

.field private final isSelectionMode:Z

.field private moveClipListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final objectCaptureViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final objectResult:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentView:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final point:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scaleFactor:F

.field private scaledObjectRectInScreen:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final useOutGlowLayerView:Z

.field private final useParticleLayerView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLandroid/graphics/Point;Landroid/view/ViewGroup;Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;ZZZZLcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;ILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "centerOffset"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentView"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objectResult"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p13, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropRect"

    invoke-static {p14, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->imageRatio:F

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->centerOffset:Landroid/graphics/Point;

    iput-object p4, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->parentView:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectResult:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    iput-boolean p6, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->isSelectionMode:Z

    iput-boolean p7, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->useOutGlowLayerView:Z

    iput-boolean p8, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->useParticleLayerView:Z

    iput-boolean p9, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->isMultiTapMode:Z

    iput-object p10, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->dragListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;

    iput-object p11, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->moveClipListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;

    iput p12, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->index:I

    iput-object p13, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->point:Landroid/graphics/Point;

    iput-object p14, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->cropRect:Landroid/graphics/Rect;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectCaptureViewList:Ljava/util/List;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->scaleFactor:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "imageRatio : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiObjectViewManager"

    invoke-static {p2, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p5, p12, p13, p14}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->updateObjectView(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;ILandroid/graphics/Point;Landroid/graphics/Rect;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "MultiObjectViewManager : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(FLandroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->fixDimensions$lambda$5(FLandroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lg8/a;Ljava/lang/Object;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->fixDimensions$lambda$6(Lsb/k;Ljava/lang/Object;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private final calcCaptureImageScaleFactor()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->scaledObjectRectInScreen:Landroid/graphics/Rect;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->scaledObjectRectInScreen:Landroid/graphics/Rect;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const v4, 0x3f7d70a4    # 0.99f

    sput v4, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDrawHelperImpl;->captureImageScaleFactor:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-ne v0, v6, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    :goto_0
    mul-float/2addr v1, v5

    float-to-int v1, v1

    goto :goto_2

    :cond_1
    :goto_1
    iget v0, v1, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v5, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :goto_2
    if-le v1, p0, :cond_2

    move v1, p0

    :cond_2
    if-le p0, v2, :cond_5

    if-ge v2, v1, :cond_3

    int-to-float v1, v1

    :goto_3
    int-to-float p0, p0

    div-float/2addr v1, p0

    goto :goto_4

    :cond_3
    int-to-float v1, v2

    goto :goto_3

    :goto_4
    int-to-float p0, v3

    mul-float/2addr p0, v1

    float-to-int p0, p0

    if-le p0, v0, :cond_4

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    mul-float/2addr v0, v1

    sput v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDrawHelperImpl;->captureImageScaleFactor:F

    goto :goto_5

    :cond_4
    sput v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDrawHelperImpl;->captureImageScaleFactor:F

    goto :goto_5

    :cond_5
    if-le v3, v0, :cond_6

    int-to-float p0, v0

    int-to-float v0, v3

    div-float/2addr p0, v0

    sput p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDrawHelperImpl;->captureImageScaleFactor:F

    :cond_6
    :goto_5
    sget p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDrawHelperImpl;->captureImageScaleFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-nez p0, :cond_7

    sput v4, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureDrawHelperImpl;->captureImageScaleFactor:F

    :cond_7
    return-void
.end method

.method private final fixDimensions([Landroid/graphics/Point;FLandroid/graphics/Point;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            "F",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    array-length p0, p1

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lg8/a;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lg8/a;-><init>(FLandroid/graphics/Point;I)V

    new-instance p2, Lcom/samsung/android/sdk/pen/ocr/a;

    const/4 p3, 0x5

    invoke-direct {p2, p3, p1}, Lcom/samsung/android/sdk/pen/ocr/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "collect(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final fixDimensions$lambda$5(FLandroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    const-string v0, "point"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, p0

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    iget p0, p1, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    add-float/2addr p2, p0

    add-float/2addr p2, v2

    float-to-int p0, p2

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static final fixDimensions$lambda$6(Lsb/k;Ljava/lang/Object;)Landroid/graphics/Point;
    .locals 0

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0
.end method

.method private final getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getRect(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;F)Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;->getBoundRect()Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v1, Landroid/graphics/Point;->y:I

    filled-new-array {v0, v1}, [Landroid/graphics/Point;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->centerOffset:Landroid/graphics/Point;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->fixDimensions([Landroid/graphics/Point;FLandroid/graphics/Point;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p2, p1, [Landroid/graphics/Point;

    invoke-interface {p0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Rect;

    aget-object p1, p0, p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    aget-object p0, p0, v1

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-direct {p2, v0, p1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private final resizeBitmapByScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, LG5/p2;->e(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, LG5/p2;->e(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "createBitmap(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p0
.end method

.method private final updateScaledObjectRectInScreen(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->scaleFactor:F

    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->scaleFactor:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    div-float/2addr v3, v0

    float-to-int p1, v3

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v1, v1

    sub-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    int-to-float p1, p1

    sub-float/2addr v3, p1

    float-to-int v3, v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v1, v4

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    add-float/2addr p2, p1

    float-to-int p1, p2

    invoke-direct {v0, v2, v3, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->scaledObjectRectInScreen:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final clearViewList()V
    .locals 3

    const-string v0, "MultiObjectViewManager"

    const-string v1, "clearViewList"

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectCaptureViewList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectCaptureViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final getObjectCaptureViewList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectCaptureViewList:Ljava/util/List;

    return-object p0
.end method

.method public final getScaledObjectRectInScreen()Landroid/graphics/Rect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->scaledObjectRectInScreen:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final setOnMoveClipListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->moveClipListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectCaptureViewList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setOnMoveClipListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setOnStartDragListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->dragListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectCaptureViewList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setOnStartDragListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setScaledObjectRectInScreen(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->scaledObjectRectInScreen:Landroid/graphics/Rect;

    return-void
.end method

.method public final startAnimation(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startAnimation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiObjectViewManager"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectCaptureViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->startTabAnimation()V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectCaptureViewList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_1

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;

    if-eq p1, v0, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->fadeOutAnimation()V

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lfb/o;->l()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public final updateObjectView(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;ILandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 11
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropRect"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "copy(...)"

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;->getObjects()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;

    new-instance p2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;->getObjBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;->getBoundRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;->getObjBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->imageRatio:F

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->resizeBitmapByScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->imageRatio:F

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->getRect(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;F)Landroid/graphics/Rect;

    move-result-object p2

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int v3, v1, v2

    iget v5, p4, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v1

    iget p4, p4, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, p4

    invoke-direct {v0, v3, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->updateScaledObjectRectInScreen(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->getLastTranslatePoint()Landroid/graphics/Point;

    move-result-object p4

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->getLastTranslatePoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->getLastTouchPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->getLastTranslatePoint()Landroid/graphics/Point;

    move-result-object p4

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->getLastTranslatePoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->getLastTouchPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setCurrentPoint(Landroid/graphics/Point;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setLastTouchPoint(Landroid/graphics/Point;)V

    iget-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->scaledObjectRectInScreen:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p4}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setDistanceOfTouchFromCenter(Landroid/graphics/Rect;FF)V

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget-boolean p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->isSelectionMode:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->useOutGlowLayerView:Z

    iget-boolean v9, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->useParticleLayerView:Z

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setCapturedInfo(Landroid/graphics/Bitmap;IILjava/lang/Boolean;ZZZ)V

    iget-boolean p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->isMultiTapMode:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setMultiTapMode(Z)V

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->dragListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setOnStartDragListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;)V

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->moveClipListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setOnMoveClipListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;)V

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectCaptureViewList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->calcCaptureImageScaleFactor()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;->getObjects()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;

    new-instance p3, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;->getObjBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;->getBoundRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {p3, p4, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    new-instance p2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;

    iget-object p4, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->context:Landroid/content/Context;

    invoke-direct {p2, p4}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;->getObjBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p4, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-static {p4, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->imageRatio:F

    invoke-direct {p0, p4, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->resizeBitmapByScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    iget p4, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->imageRatio:F

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->getRect(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;F)Landroid/graphics/Rect;

    move-result-object p3

    iget v5, p3, Landroid/graphics/Rect;->left:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    iget-boolean p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->isSelectionMode:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->useOutGlowLayerView:Z

    iget-boolean v9, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->useParticleLayerView:Z

    const/4 v10, 0x1

    move-object v3, p2

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setCapturedInfo(Landroid/graphics/Bitmap;IILjava/lang/Boolean;ZZZ)V

    iget-boolean p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->isMultiTapMode:Z

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setMultiTapMode(Z)V

    iget-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->dragListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setOnStartDragListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;)V

    iget-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->moveClipListener:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->setOnMoveClipListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnMoveClipListener;)V

    iget-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectCaptureViewList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->objectCaptureViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "updateObjectView "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiObjectViewManager"

    invoke-static {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
