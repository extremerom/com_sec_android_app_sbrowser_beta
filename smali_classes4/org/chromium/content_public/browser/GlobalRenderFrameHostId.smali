.class public final Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mChildId:I

.field private final mFrameRoutingId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;->mChildId:I

    iput p2, p0, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;->mFrameRoutingId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;

    iget v0, p0, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;->mChildId:I

    iget v2, p1, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;->mChildId:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;->mFrameRoutingId:I

    iget p1, p1, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;->mFrameRoutingId:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;->mChildId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lorg/chromium/content_public/browser/GlobalRenderFrameHostId;->mFrameRoutingId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
