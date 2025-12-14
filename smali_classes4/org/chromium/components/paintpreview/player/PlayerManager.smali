.class public Lorg/chromium/components/paintpreview/player/PlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/paintpreview/player/PlayerManager$Listener;,
        Lorg/chromium/components/paintpreview/player/PlayerManager$CompositorDelegateFactory;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sCompositorDelegateFactory:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/components/paintpreview/player/PlayerManager$CompositorDelegateFactory;

    invoke-direct {v0}, Lorg/chromium/components/paintpreview/player/PlayerManager$CompositorDelegateFactory;-><init>()V

    sput-object v0, Lorg/chromium/components/paintpreview/player/PlayerManager;->sCompositorDelegateFactory:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$Factory;

    return-void
.end method

.method public static buildFrameTreeHierarchy(Lorg/chromium/base/UnguessableToken;[Lorg/chromium/base/UnguessableToken;[I[I[I[Lorg/chromium/base/UnguessableToken;[IZ)Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;
    .locals 15
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    if-eqz p7, :cond_0

    move v9, v2

    goto :goto_1

    :cond_0
    mul-int/lit8 v4, v3, 0x2

    aget v4, p3, v4

    move v9, v4

    :goto_1
    if-eqz p7, :cond_1

    move v10, v2

    goto :goto_2

    :cond_1
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p3, v4

    move v10, v4

    :goto_2
    aget-object v4, v0, v3

    new-instance v11, Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;

    mul-int/lit8 v5, v3, 0x2

    aget v7, p2, v5

    add-int/lit8 v5, v5, 0x1

    aget v8, p2, v5

    move-object v5, v11

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;-><init>(Lorg/chromium/base/UnguessableToken;IIII)V

    invoke-virtual {v1, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    move v4, v3

    :goto_3
    array-length v5, v0

    if-ge v3, v5, :cond_4

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;

    invoke-static {v5}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;

    aget v6, p4, v3

    new-array v7, v6, [Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;

    new-array v8, v6, [Landroid/graphics/Rect;

    move v9, v2

    :goto_4
    if-ge v9, v6, :cond_3

    aget-object v10, p5, v4

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;

    invoke-static {v10}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;

    aput-object v10, v7, v9

    mul-int/lit8 v10, v4, 0x4

    aget v11, p6, v10

    add-int/lit8 v12, v10, 0x1

    aget v12, p6, v12

    add-int/lit8 v13, v10, 0x2

    aget v13, p6, v13

    add-int/lit8 v10, v10, 0x3

    aget v10, p6, v10

    new-instance v14, Landroid/graphics/Rect;

    add-int/2addr v13, v11

    add-int/2addr v10, v12

    invoke-direct {v14, v11, v12, v13, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v14, v8, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v5, v7}, Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;->setSubFrames([Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;)V

    invoke-virtual {v5, v8}, Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;->setSubFrameClips([Landroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move-object v3, p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/paintpreview/player/PaintPreviewFrame;

    return-object v0
.end method
