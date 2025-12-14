.class Lorg/chromium/media/VideoAcceleratorUtil$Resolution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoAcceleratorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resolution"
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;->mWidth:I

    iput p2, p0, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;->mHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;->mWidth:I

    return p0
.end method
