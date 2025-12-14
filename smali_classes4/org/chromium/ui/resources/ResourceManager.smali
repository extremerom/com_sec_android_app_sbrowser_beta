.class public Lorg/chromium/ui/resources/ResourceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/resources/ResourceManager$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mLoadedResources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lorg/chromium/ui/resources/LayoutResource;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNativeResourceManagerPtr:J

.field private final mPxToDp:F

.field private final mResourceLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/chromium/ui/resources/ResourceLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mLoadedResources:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mPxToDp:F

    new-instance v0, Lorg/chromium/ui/resources/statics/StaticResourceLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lorg/chromium/ui/resources/statics/StaticResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    new-instance p1, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V

    invoke-direct {p0, p1}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    new-instance p1, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V

    invoke-direct {p0, p1}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    new-instance p1, Lorg/chromium/ui/resources/system/SystemResourceLoader;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0, p2}, Lorg/chromium/ui/resources/system/SystemResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;I)V

    invoke-direct {p0, p1}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    iput-wide p3, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    return-void
.end method

.method private static create(Lorg/chromium/ui/base/WindowAndroid;J)Lorg/chromium/ui/resources/ResourceManager;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lorg/chromium/ui/resources/ResourceManager;

    invoke-direct {v1, v0, p0, p1, p2}, Lorg/chromium/ui/resources/ResourceManager;-><init>(Landroid/content/res/Resources;IJ)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Context should not be null during initialization."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    return-void
.end method

.method private getNativePtr()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    return-wide v0
.end method

.method private preloadResource(II)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/resources/ResourceLoader;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lorg/chromium/ui/resources/ResourceLoader;->preloadResource(I)V

    :cond_0
    return-void
.end method

.method private registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/chromium/ui/resources/ResourceLoader;->getResourceType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private resourceRequested(II)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/resources/ResourceLoader;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lorg/chromium/ui/resources/ResourceLoader;->loadResource(I)V

    :cond_0
    return-void
.end method

.method private saveMetadataForLoadedResource(IILorg/chromium/ui/resources/Resource;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mLoadedResources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mLoadedResources:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    new-instance p1, Lorg/chromium/ui/resources/LayoutResource;

    iget p0, p0, Lorg/chromium/ui/resources/ResourceManager;->mPxToDp:F

    invoke-direct {p1, p0, p3}, Lorg/chromium/ui/resources/LayoutResource;-><init>(FLorg/chromium/ui/resources/Resource;)V

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onResourceLoaded(IILorg/chromium/ui/resources/Resource;)V
    .locals 11

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Lorg/chromium/ui/resources/Resource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/ui/resources/ResourceManager;->saveMetadataForLoadedResource(IILorg/chromium/ui/resources/Resource;)V

    iget-wide v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lorg/chromium/ui/resources/ResourceManagerJni;->get()Lorg/chromium/ui/resources/ResourceManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    invoke-interface {p3}, Lorg/chromium/ui/resources/Resource;->getBitmapSize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-interface {p3}, Lorg/chromium/ui/resources/Resource;->getBitmapSize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-interface {p3}, Lorg/chromium/ui/resources/Resource;->createNativeResource()J

    move-result-wide v9

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v10}, Lorg/chromium/ui/resources/ResourceManager$Natives;->onResourceReady(JLorg/chromium/ui/resources/ResourceManager;IILandroid/graphics/Bitmap;IIJ)V

    return-void
.end method
