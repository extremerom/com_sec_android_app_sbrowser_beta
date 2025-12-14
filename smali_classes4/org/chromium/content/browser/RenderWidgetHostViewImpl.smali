.class public Lorg/chromium/content/browser/RenderWidgetHostViewImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/RenderWidgetHostView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/RenderWidgetHostViewImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mNativeDestroyThrowable:Ljava/lang/Throwable;

.field private mNativeRenderWidgetHostView:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->mNativeRenderWidgetHostView:J

    return-void
.end method

.method private checkNotDestroyed()V
    .locals 4

    invoke-direct {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->getNativePtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native RenderWidgetHostViewAndroid already destroyed"

    iget-object p0, p0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->mNativeDestroyThrowable:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private clearNativePtr()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->mNativeRenderWidgetHostView:J

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clearNativePtr"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->mNativeDestroyThrowable:Ljava/lang/Throwable;

    return-void
.end method

.method private static create(J)Lorg/chromium/content/browser/RenderWidgetHostViewImpl;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;-><init>(J)V

    return-object v0
.end method

.method private getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->mNativeRenderWidgetHostView:J

    return-wide v0
.end method


# virtual methods
.method public dismissTextHandles()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/RenderWidgetHostViewImplJni;->get()Lorg/chromium/content/browser/RenderWidgetHostViewImpl$Natives;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->getNativePtr()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl$Natives;->dismissTextHandles(JLorg/chromium/content/browser/RenderWidgetHostViewImpl;)V

    return-void
.end method

.method public isDestroyed()Z
    .locals 4

    invoke-direct {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->getNativePtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onViewportInsetBottomChanged()V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/RenderWidgetHostViewImplJni;->get()Lorg/chromium/content/browser/RenderWidgetHostViewImpl$Natives;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->getNativePtr()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl$Natives;->onViewportInsetBottomChanged(JLorg/chromium/content/browser/RenderWidgetHostViewImpl;)V

    return-void
.end method

.method public showContextMenuAtTouchHandle(II)V
    .locals 6

    invoke-direct {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->checkNotDestroyed()V

    invoke-static {}, Lorg/chromium/content/browser/RenderWidgetHostViewImplJni;->get()Lorg/chromium/content/browser/RenderWidgetHostViewImpl$Natives;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->getNativePtr()J

    move-result-wide v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl$Natives;->showContextMenuAtTouchHandle(JLorg/chromium/content/browser/RenderWidgetHostViewImpl;II)V

    return-void
.end method
