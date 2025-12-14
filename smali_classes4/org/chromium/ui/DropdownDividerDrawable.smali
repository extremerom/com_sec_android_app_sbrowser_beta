.class public Lorg/chromium/ui/DropdownDividerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mBackgroundColor:Ljava/lang/Integer;

.field private final mDividerRect:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/DropdownDividerDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/DropdownDividerDrawable;->mDividerRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lorg/chromium/ui/DropdownDividerDrawable;->mBackgroundColor:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/DropdownDividerDrawable;->mBackgroundColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/DropdownDividerDrawable;->mDividerRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lorg/chromium/ui/DropdownDividerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/DropdownDividerDrawable;->mDividerRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p0, p0, Lorg/chromium/ui/DropdownDividerDrawable;->mDividerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/DropdownDividerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    iget-object p0, p0, Lorg/chromium/ui/DropdownDividerDrawable;->mDividerRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
