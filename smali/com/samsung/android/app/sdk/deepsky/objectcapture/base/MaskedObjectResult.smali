.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008&\u0008\u0086\u0008\u0018\u0000 52\u00020\u0001:\u00015BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\nH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u000cH\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJR\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cH\u00c6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010!\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008!\u0010\u001eJ\u0010\u0010\"\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\"\u0010\u001cJ\u001a\u0010$\u001a\u00020\u00022\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008$\u0010%R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010&\u001a\u0004\u0008\u0003\u0010\u0014R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\'\u001a\u0004\u0008(\u0010\u0016R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010)\u001a\u0004\u0008*\u0010\u0018\"\u0004\u0008+\u0010,R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010-\u001a\u0004\u0008.\u0010\u001a\"\u0004\u0008/\u00100R\u0017\u0010\u000b\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u00101\u001a\u0004\u00082\u0010\u001cR\u0017\u0010\r\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u00103\u001a\u0004\u00084\u0010\u001e\u00a8\u00066"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;",
        "",
        "",
        "isCaptured",
        "Landroid/graphics/Bitmap;",
        "maskedObject",
        "",
        "mask",
        "Landroid/graphics/Rect;",
        "boundingBox",
        "",
        "errorCode",
        "",
        "solutionInfo",
        "<init>",
        "(ZLandroid/graphics/Bitmap;[ILandroid/graphics/Rect;ILjava/lang/String;)V",
        "Ldb/r;",
        "release",
        "()V",
        "component1",
        "()Z",
        "component2",
        "()Landroid/graphics/Bitmap;",
        "component3",
        "()[I",
        "component4",
        "()Landroid/graphics/Rect;",
        "component5",
        "()I",
        "component6",
        "()Ljava/lang/String;",
        "copy",
        "(ZLandroid/graphics/Bitmap;[ILandroid/graphics/Rect;ILjava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;",
        "toString",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Z",
        "Landroid/graphics/Bitmap;",
        "getMaskedObject",
        "[I",
        "getMask",
        "setMask",
        "([I)V",
        "Landroid/graphics/Rect;",
        "getBoundingBox",
        "setBoundingBox",
        "(Landroid/graphics/Rect;)V",
        "I",
        "getErrorCode",
        "Ljava/lang/String;",
        "getSolutionInfo",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MaskedObjectResult"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private boundingBox:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorCode:I

.field private final isCaptured:Z

.field private mask:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final maskedObject:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final solutionInfo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult$Companion;

    return-void
.end method

.method public constructor <init>(ZLandroid/graphics/Bitmap;[ILandroid/graphics/Rect;ILjava/lang/String;)V
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "solutionInfo"

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->isCaptured:Z

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->maskedObject:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->mask:[I

    iput-object p4, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->boundingBox:Landroid/graphics/Rect;

    iput p5, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->errorCode:I

    iput-object p6, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->solutionInfo:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/graphics/Bitmap;[ILandroid/graphics/Rect;ILjava/lang/String;ILtb/f;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const-string p6, ""

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;-><init>(ZLandroid/graphics/Bitmap;[ILandroid/graphics/Rect;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;ZLandroid/graphics/Bitmap;[ILandroid/graphics/Rect;ILjava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->isCaptured:Z

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->maskedObject:Landroid/graphics/Bitmap;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->mask:[I

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->boundingBox:Landroid/graphics/Rect;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->errorCode:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->solutionInfo:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->copy(ZLandroid/graphics/Bitmap;[ILandroid/graphics/Rect;ILjava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->isCaptured:Z

    return p0
.end method

.method public final component2()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->maskedObject:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final component3()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->mask:[I

    return-object p0
.end method

.method public final component4()Landroid/graphics/Rect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->boundingBox:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->errorCode:I

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->solutionInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ZLandroid/graphics/Bitmap;[ILandroid/graphics/Rect;ILjava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;
    .locals 7
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "solutionInfo"

    invoke-static {p6, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;-><init>(ZLandroid/graphics/Bitmap;[ILandroid/graphics/Rect;ILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;

    iget-boolean v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->isCaptured:Z

    iget-boolean v3, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->isCaptured:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->maskedObject:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->maskedObject:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->mask:[I

    iget-object v3, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->mask:[I

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->boundingBox:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->boundingBox:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->errorCode:I

    iget v3, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->errorCode:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->solutionInfo:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->solutionInfo:Ljava/lang/String;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBoundingBox()Landroid/graphics/Rect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->boundingBox:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->errorCode:I

    return p0
.end method

.method public final getMask()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->mask:[I

    return-object p0
.end method

.method public final getMaskedObject()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->maskedObject:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getSolutionInfo()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->solutionInfo:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->isCaptured:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->maskedObject:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->mask:[I

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->boundingBox:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->errorCode:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->solutionInfo:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isCaptured()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->isCaptured:Z

    return p0
.end method

.method public final release()V
    .locals 2

    const-string v0, "MaskedObjectResult"

    const-string v1, "release MaskedObjectResult"

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->maskedObject:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->mask:[I

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->boundingBox:Landroid/graphics/Rect;

    return-void
.end method

.method public final setBoundingBox(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->boundingBox:Landroid/graphics/Rect;

    return-void
.end method

.method public final setMask([I)V
    .locals 0
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->mask:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->isCaptured:Z

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->maskedObject:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->mask:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->boundingBox:Landroid/graphics/Rect;

    iget v4, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->errorCode:I

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/MaskedObjectResult;->solutionInfo:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MaskedObjectResult(isCaptured="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", maskedObject="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mask="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", boundingBox="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", errorCode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", solutionInfo="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
