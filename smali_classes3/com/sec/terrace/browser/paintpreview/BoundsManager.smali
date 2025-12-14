.class public Lcom/sec/terrace/browser/paintpreview/BoundsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mClipRect:Landroid/graphics/Rect;

.field private mHeight:I

.field private mRect:Landroid/graphics/Rect;

.field private mScaleFactor:F

.field private mWidth:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Rect;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->mWidth:I

    iput p2, p0, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->mHeight:I

    iput-object p3, p0, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->mRect:Landroid/graphics/Rect;

    iput p4, p0, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->mScaleFactor:F

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr p1, p4

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Rect;->right:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p2, p4

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->mRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getClipRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->mClipRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPageScaleFactor()F
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->mScaleFactor:F

    return p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public height()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->mHeight:I

    return p0
.end method

.method public width()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/paintpreview/BoundsManager;->mWidth:I

    return p0
.end method
