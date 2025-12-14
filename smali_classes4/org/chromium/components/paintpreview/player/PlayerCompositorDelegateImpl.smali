.class public Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mCompositorListener:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;

.field private mMemoryPressureListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mNativePlayerCompositorDelegate:J


# direct methods
.method public constructor <init>(Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;JLorg/chromium/url/GURL;Ljava/lang/String;ZLorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;Lorg/chromium/base/Callback;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;",
            "J",
            "Lorg/chromium/url/GURL;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v11, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mMemoryPressureListeners:Ljava/util/List;

    move-object/from16 v0, p7

    iput-object v0, v11, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mCompositorListener:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;->getNativeBaseService()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string v12, "PlayerCompositorDelegateImplJni.initialize()"

    invoke-static {v12}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImplJni;->get()Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;

    move-result-object v0

    invoke-interface {p1}, Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;->getNativeBaseService()J

    move-result-wide v2

    invoke-virtual/range {p4 .. p4}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/chromium/base/SysUtils;->amountOfPhysicalMemoryKB()I

    move-result v1

    const/16 v4, 0x800

    if-ge v1, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v10, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-wide v4, p2

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v10}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;->initialize(Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;JJLjava/lang/String;Ljava/lang/String;ZLorg/chromium/base/Callback;Z)J

    move-result-wide v0

    iput-wide v0, v11, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    invoke-static {v12}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelAllBitmapRequests()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImplJni;->get()Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;->cancelAllBitmapRequests(J)V

    return-void
.end method

.method public cancelBitmapRequest(I)Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImplJni;->get()Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;->cancelBitmapRequest(JI)Z

    move-result p0

    return p0
.end method

.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImplJni;->get()Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    invoke-interface {v0, v4, v5}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;->destroy(J)V

    iput-wide v2, p0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    return-void
.end method

.method public onClick(Lorg/chromium/base/UnguessableToken;II)Lorg/chromium/url/GURL;
    .locals 8

    iget-wide v0, p0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImplJni;->get()Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v2 .. v7}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;->onClick(JLorg/chromium/base/UnguessableToken;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    new-instance p1, Lorg/chromium/url/GURL;

    invoke-direct {p1, p0}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public onCompositorReady(Lorg/chromium/base/UnguessableToken;[Lorg/chromium/base/UnguessableToken;[I[I[I[Lorg/chromium/base/UnguessableToken;[IFJ)V
    .locals 11
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-object v0, v0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mCompositorListener:Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-interface/range {v0 .. v10}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;->onCompositorReady(Lorg/chromium/base/UnguessableToken;[Lorg/chromium/base/UnguessableToken;[I[I[I[Lorg/chromium/base/UnguessableToken;[IFJ)V

    return-void
.end method

.method public onModerateMemoryPressure()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mMemoryPressureListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestBitmap(Landroid/graphics/Rect;FLorg/chromium/base/Callback;Ljava/lang/Runnable;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "F",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/Runnable;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->requestBitmap(Lorg/chromium/base/UnguessableToken;Landroid/graphics/Rect;FLorg/chromium/base/Callback;Ljava/lang/Runnable;)I

    move-result p0

    return p0
.end method

.method public requestBitmap(Lorg/chromium/base/UnguessableToken;Landroid/graphics/Rect;FLorg/chromium/base/Callback;Ljava/lang/Runnable;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/UnguessableToken;",
            "Landroid/graphics/Rect;",
            "F",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/Runnable;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    iget-wide v2, v0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImplJni;->get()Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;

    move-result-object v2

    iget-wide v3, v0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;->mNativePlayerCompositorDelegate:J

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object v1, v2

    move-wide v2, v3

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v7, p3

    invoke-interface/range {v1 .. v11}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;->requestBitmap(JLorg/chromium/base/UnguessableToken;Lorg/chromium/base/Callback;Ljava/lang/Runnable;FIIII)I

    move-result v0

    return v0
.end method
