.class Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader$DynamicResourceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicResourceHolder"
.end annotation


# instance fields
.field private final mDynamicResource:Lorg/chromium/ui/resources/dynamics/DynamicResource;


# virtual methods
.method public getDynamicResource()Lorg/chromium/ui/resources/dynamics/DynamicResource;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader$DynamicResourceHolder;->mDynamicResource:Lorg/chromium/ui/resources/dynamics/DynamicResource;

    return-object p0
.end method
