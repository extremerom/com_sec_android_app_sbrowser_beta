.class Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

.field static final BITMAP_MATRIX:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "[[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static final OFFSET:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field static final SCALE_MATRIX:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field static final SUBFRAME_RECTS:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field static final SUBFRAME_VIEWS:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field static final TILE_DIMENSIONS:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field static final VIEWPORT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>(Z)V

    sput-object v0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->BITMAP_MATRIX:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v2, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v2}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v2, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->TILE_DIMENSIONS:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v3, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v3, v1}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>(Z)V

    sput-object v3, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->OFFSET:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v4, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v4, v1}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>(Z)V

    sput-object v4, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->VIEWPORT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v5, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v5}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v5, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->SUBFRAME_VIEWS:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v6, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v6}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>()V

    sput-object v6, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->SUBFRAME_RECTS:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    new-instance v7, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-direct {v7, v1}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;-><init>(Z)V

    sput-object v7, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->SCALE_MATRIX:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    const/4 v8, 0x7

    new-array v8, v8, [Lorg/chromium/ui/modelutil/PropertyKey;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    aput-object v2, v8, v1

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v4, v8, v0

    const/4 v0, 0x4

    aput-object v5, v8, v0

    const/4 v0, 0x5

    aput-object v6, v8, v0

    const/4 v0, 0x6

    aput-object v7, v8, v0

    sput-object v8, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameProperties;->ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

    return-void
.end method
