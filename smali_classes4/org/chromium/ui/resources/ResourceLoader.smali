.class public abstract Lorg/chromium/ui/resources/ResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

.field private final mResourceType:I


# direct methods
.method public constructor <init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/ui/resources/ResourceLoader;->mResourceType:I

    iput-object p2, p0, Lorg/chromium/ui/resources/ResourceLoader;->mCallback:Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

    return-void
.end method


# virtual methods
.method public getResourceType()I
    .locals 0

    iget p0, p0, Lorg/chromium/ui/resources/ResourceLoader;->mResourceType:I

    return p0
.end method

.method public abstract loadResource(I)V
.end method

.method public notifyLoadFinished(ILorg/chromium/ui/resources/Resource;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceLoader;->mCallback:Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/resources/ResourceLoader;->getResourceType()I

    move-result p0

    invoke-interface {v0, p0, p1, p2}, Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;->onResourceLoaded(IILorg/chromium/ui/resources/Resource;)V

    :cond_0
    return-void
.end method

.method public abstract preloadResource(I)V
.end method
