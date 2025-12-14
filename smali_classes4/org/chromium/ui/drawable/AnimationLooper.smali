.class public Lorg/chromium/ui/drawable/AnimationLooper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAnimatable:Landroid/graphics/drawable/Animatable;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic a(Lorg/chromium/ui/drawable/AnimationLooper;)Landroid/graphics/drawable/Animatable;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/drawable/AnimationLooper;->mAnimatable:Landroid/graphics/drawable/Animatable;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/ui/drawable/AnimationLooper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/drawable/AnimationLooper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method
