.class public Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundIndex:I

.field private mCurrentFrame:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

.field private mFrameCount:I

.field private mFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mGCT:[I

.field private mGCTSize:I

.field private mHasGCT:Z

.field private mHeight:I

.field private mLoopCount:I

.field private mPixelAspect:I

.field private mStatus:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mGCT:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mFrameCount:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mStatus:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mFrames:Ljava/util/List;

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mLoopCount:I

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mBackgroundColor:I

    return p0
.end method

.method public getBackgroundIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mBackgroundIndex:I

    return p0
.end method

.method public getCurrentFrame()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mCurrentFrame:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    return-object p0
.end method

.method public getFrameCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mFrameCount:I

    return p0
.end method

.method public getFrames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mFrames:Ljava/util/List;

    return-object p0
.end method

.method public getGCT()[I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mGCT:[I

    return-object p0
.end method

.method public getGCTSize()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mGCTSize:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mHeight:I

    return p0
.end method

.method public getLoopCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mLoopCount:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mStatus:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mWidth:I

    return p0
.end method

.method public hasGCT()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mHasGCT:Z

    return p0
.end method

.method public increaseFrameCount()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mFrameCount:I

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mBackgroundColor:I

    return-void
.end method

.method public setBackgroundIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mBackgroundIndex:I

    return-void
.end method

.method public setCurrentFrame(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mCurrentFrame:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifFrame;

    return-void
.end method

.method public setGCT([I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mGCT:[I

    return-void
.end method

.method public setGCTSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mGCTSize:I

    return-void
.end method

.method public setHasGCT(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mHasGCT:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mHeight:I

    return-void
.end method

.method public setLoopCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mLoopCount:I

    return-void
.end method

.method public setPixelAspect(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mPixelAspect:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mStatus:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifHeader;->mWidth:I

    return-void
.end method
