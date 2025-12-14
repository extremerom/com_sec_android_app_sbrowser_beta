.class public interface abstract Lorg/chromium/content/common/IGpuProcessCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/common/IGpuProcessCallback$_Parcel;,
        Lorg/chromium/content/common/IGpuProcessCallback$Stub;,
        Lorg/chromium/content/common/IGpuProcessCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.chromium.content.common.IGpuProcessCallback"


# virtual methods
.method public abstract forwardInputTransferToken(ILorg/chromium/content/common/InputTransferTokenWrapper;)V
.end method

.method public abstract forwardSurfaceForSurfaceRequest(Lorg/chromium/base/UnguessableToken;Landroid/view/Surface;)V
.end method

.method public abstract getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
.end method
