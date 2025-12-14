.class public Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/dragdrop/DragAndDropDelegate;
.implements Lorg/chromium/ui/dragdrop/DragStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl$DragTargetType;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDragAndDropBrowserDelegate:Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;

.field private mDragStartSystemElapsedTime:J

.field private mDragStartXDp:F

.field private mDragStartYDp:F

.field private mDragTargetType:I

.field private mImageView:Landroid/widget/ImageView;

.field private mIsDragStarted:Z

.field private mIsDropOnView:Z

.field private mShadowHeight:I

.field private mShadowWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDragTargetType(Lorg/chromium/ui/dragdrop/DropDataAndroid;)I
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasBrowserContent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->isPlainText()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasLink()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static getTextForLinkData(Lorg/chromium/ui/dragdrop/DropDataAndroid;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataAndroid;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DropDataAndroid;->gurl:Lorg/chromium/url/GURL;

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/DropDataAndroid;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DropDataAndroid;->gurl:Lorg/chromium/url/GURL;

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isA11yStateEnabled()Z
    .locals 1

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isPerformGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onDragEnd(Landroid/view/DragEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result p1

    iget-boolean v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mIsDropOnView:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragStartSystemElapsedTime:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->recordDragDurationAndResult(JZ)V

    iget v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragTargetType:I

    invoke-direct {p0, v0}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->recordDragTargetType(I)V

    :cond_0
    invoke-static {p1}, Lorg/chromium/ui/dragdrop/DropDataProviderUtils;->clearImageCache(Z)Z

    return-void
.end method

.method private onDragStarted(Landroid/view/DragEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragStartXDp:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragStartYDp:F

    return-void
.end method

.method private onDrop(Landroid/view/DragEvent;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mIsDropOnView:Z

    iget v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragStartXDp:F

    iget v1, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragStartYDp:F

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lorg/chromium/base/MathUtils;->distance(FFFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const-string v0, "Android.DragDrop.FromWebContent.DropInWebContent.DistanceDip"

    const/16 v1, 0x33

    invoke-static {v0, p1, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordExactLinearHistogram(Ljava/lang/String;II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide p0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragStartSystemElapsedTime:J

    sub-long/2addr v0, p0

    const-string p0, "Android.DragDrop.FromWebContent.DropInWebContent.Duration"

    invoke-static {p0, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V

    return-void
.end method

.method private onDropFromOutside(Landroid/view/DragEvent;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragAndDropBrowserDelegate:Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;->getDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/DragAndDropPermissions;->release()V

    return-void
.end method

.method private recordDragDurationAndResult(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    const-string p0, "Success"

    goto :goto_0

    :cond_0
    const-string p0, "Canceled"

    :goto_0
    const-string p3, "Android.DragDrop.FromWebContent.Duration."

    invoke-virtual {p3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->deprecatedRecordMediumTimesHistogram(Ljava/lang/String;J)V

    return-void
.end method

.method private recordDragTargetType(I)V
    .locals 1

    const-string p0, "Android.DragDrop.FromWebContent.TargetType"

    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mShadowHeight:I

    iput v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mShadowWidth:I

    iput v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragTargetType:I

    iput-boolean v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mIsDragStarted:Z

    iput-boolean v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mIsDropOnView:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragStartSystemElapsedTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method private startDragAndDropInternal(Landroid/view/View;Landroid/view/View$DragShadowBuilder;Lorg/chromium/ui/dragdrop/DropDataAndroid;)Z
    .locals 3

    invoke-virtual {p0, p3}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->buildClipData(Lorg/chromium/ui/dragdrop/DropDataAndroid;)Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mIsDragStarted:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragStartSystemElapsedTime:J

    invoke-static {p3}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->getDragTargetType(Lorg/chromium/ui/dragdrop/DropDataAndroid;)I

    move-result v1

    iput v1, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragTargetType:I

    iget-object v1, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragAndDropBrowserDelegate:Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;->getSupportDropInChrome()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p3}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->buildFlags(Lorg/chromium/ui/dragdrop/DropDataAndroid;)I

    move-result p0

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method private updateShadowImage(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/widget/ImageView;II)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p2, p4, p5, p1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, LY0/b;

    invoke-direct {p2, p0, p1}, LY0/c;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sget p1, Lorg/chromium/ui/R$dimen;->drag_shadow_border_corner_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, LY0/c;->b(F)V

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p1, Lorg/chromium/ui/R$drawable;->drag_shadow_background:I

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    sget p1, Lorg/chromium/ui/R$dimen;->drag_shadow_border_size:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p3, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateShadowSizeWithBorder(Landroid/content/Context;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/chromium/ui/R$dimen;->drag_shadow_border_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mShadowWidth:I

    add-int/2addr p3, p1

    iput p3, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mShadowHeight:I

    return-void
.end method


# virtual methods
.method public buildClipData(Lorg/chromium/ui/dragdrop/DropDataAndroid;)Landroid/content/ClipData;
    .locals 5

    invoke-static {p1}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->getDragTargetType(Lorg/chromium/ui/dragdrop/DropDataAndroid;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v2, "text/plain"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragAndDropBrowserDelegate:Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragAndDropBrowserDelegate:Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;

    invoke-interface {p0, p1}, Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;->buildClipData(Lorg/chromium/ui/dragdrop/DropDataAndroid;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragAndDropBrowserDelegate:Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;

    if-eqz p0, :cond_2

    iget-object v0, p1, Lorg/chromium/ui/dragdrop/DropDataAndroid;->gurl:Lorg/chromium/url/GURL;

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v3}, Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;->createUrlIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Landroid/content/ClipData;

    const-string v3, "text/vnd.android.intent"

    const-string v4, "chrome/link"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-static {p1}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->getTextForLinkData(Lorg/chromium/ui/dragdrop/DropDataAndroid;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, p0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v0, v1, v2, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v0

    :cond_2
    invoke-static {p1}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->getTextForLinkData(Lorg/chromium/ui/dragdrop/DropDataAndroid;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Lorg/chromium/ui/dragdrop/DropDataProviderUtils;->cacheImageData(Lorg/chromium/ui/dragdrop/DropDataAndroid;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, p0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Landroid/content/ClipData;

    const-string v0, "chrome/text"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ClipData$Item;

    iget-object p1, p1, Lorg/chromium/ui/dragdrop/DropDataAndroid;->text:Ljava/lang/String;

    invoke-direct {v2, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1, v0, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object p0

    :cond_6
    return-object v1
.end method

.method public buildFlags(Lorg/chromium/ui/dragdrop/DropDataAndroid;)I
    .locals 1

    invoke-virtual {p1}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasBrowserContent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragAndDropBrowserDelegate:Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;

    const/16 v0, 0x300

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0, p1}, Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;->buildFlags(ILorg/chromium/ui/dragdrop/DropDataAndroid;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->isPlainText()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasLink()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v0, 0x100

    :goto_2
    invoke-virtual {p1}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasImage()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragAndDropBrowserDelegate:Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;->getSupportAnimatedImageDragShadow()Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 v0, 0x301

    goto :goto_3

    :cond_4
    const/16 v0, 0x101

    :cond_5
    :goto_3
    return v0
.end method

.method public createDragShadowBuilder(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;ZIIIIII)Landroid/view/View$DragShadowBuilder;
    .locals 6

    move-object v0, p0

    move-object v1, p2

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mImageView:Landroid/widget/ImageView;

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v3, :cond_0

    sget v2, Lorg/chromium/ui/R$drawable;->ic_globe_24dp:I

    invoke-static {v2, p2}, Ll5/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->getDragShadowMinSize(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mShadowWidth:I

    iput v1, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mShadowHeight:I

    iget-object v3, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v4, p5

    move v5, p6

    invoke-static {p2, v2, v3, p5, p6}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->getDragShadowSpec(Landroid/content/Context;IIII)Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;

    move-result-object v2

    iget v3, v2, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->targetWidth:I

    iget v4, v2, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->targetHeight:I

    invoke-direct {p0, p2, v3, v4}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->updateShadowSizeWithBorder(Landroid/content/Context;II)V

    iget-object v3, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragAndDropBrowserDelegate:Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;->getSupportAnimatedImageDragShadow()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, p7

    int-to-float v0, v3

    move v3, p8

    int-to-float v3, v3

    move v4, p9

    move/from16 v5, p10

    invoke-static {v0, v3, p9, v5, v2}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;->adjustCursorOffset(FFIILorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;)Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$CursorOffset;

    move-result-object v0

    new-instance v3, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;

    iget v4, v0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$CursorOffset;->x:F

    iget v0, v0, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$CursorOffset;->y:F

    move-object p4, v3

    move-object p5, p1

    move-object p6, p2

    move-object p7, p3

    move p8, v4

    move p9, v0

    move-object/from16 p10, v2

    invoke-direct/range {p4 .. p10}, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;FFLorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;)V

    return-object v3

    :cond_1
    iget-object v3, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mImageView:Landroid/widget/ImageView;

    iget v4, v2, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->targetWidth:I

    iget v2, v2, Lorg/chromium/ui/dragdrop/AnimatedImageDragShadowBuilder$DragShadowSpec;->targetHeight:I

    move-object p4, p0

    move-object p5, p2

    move-object p6, p3

    move-object p7, v3

    move p8, v4

    move p9, v2

    invoke-direct/range {p4 .. p9}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->updateShadowImage(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/widget/ImageView;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mShadowWidth:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mShadowHeight:I

    iget-object v1, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mImageView:Landroid/widget/ImageView;

    move-object v2, p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v1, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mImageView:Landroid/widget/ImageView;

    iget v2, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mShadowWidth:I

    iget v3, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mShadowHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    iget-object v0, v0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public destroy()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragAndDropBrowserDelegate:Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;

    return-void
.end method

.method public getDragStartXDp()F
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragStartXDp:F

    return p0
.end method

.method public getDragStartYDp()F
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragStartYDp:F

    return p0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3

    iget-boolean p1, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mIsDragStarted:Z

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->mDragAndDropBrowserDelegate:Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/ui/dragdrop/DragAndDropBrowserDelegate;->getSupportDropInChrome()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_0

    invoke-direct {p0, p2}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->onDropFromOutside(Landroid/view/DragEvent;)V

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->onDragEnd(Landroid/view/DragEvent;)V

    invoke-direct {p0}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->reset()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->onDrop(Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->onDragStarted(Landroid/view/DragEvent;)V

    :goto_0
    return v0
.end method

.method public startDragAndDrop(Landroid/view/View;Landroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Landroid/content/Context;IIII)Z
    .locals 12

    invoke-static {}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->isA11yStateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p3}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasImage()Z

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object v4, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->createDragShadowBuilder(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;ZIIIIII)Landroid/view/View$DragShadowBuilder;

    move-result-object v0

    move-object v3, p3

    invoke-direct {p0, p1, v0, p3}, Lorg/chromium/ui/dragdrop/DragAndDropDelegateImpl;->startDragAndDropInternal(Landroid/view/View;Landroid/view/View$DragShadowBuilder;Lorg/chromium/ui/dragdrop/DropDataAndroid;)Z

    move-result v0

    return v0
.end method
