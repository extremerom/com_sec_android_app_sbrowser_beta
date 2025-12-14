.class public Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;
.super Lorg/chromium/ui/resources/ResourceLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader$DynamicResourceHolder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDynamicResourceHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader$DynamicResourceHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/resources/ResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->mDynamicResourceHolders:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public loadResource(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->mDynamicResourceHolders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader$DynamicResourceHolder;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader$DynamicResourceHolder;->getDynamicResource()Lorg/chromium/ui/resources/dynamics/DynamicResource;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/ui/resources/dynamics/DynamicResource;->onResourceRequested()V

    return-void
.end method

.method public preloadResource(I)V
    .locals 0

    return-void
.end method
