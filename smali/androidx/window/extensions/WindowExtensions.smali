.class public interface abstract Landroidx/window/extensions/WindowExtensions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVALID_VENDOR_API_LEVEL:I = -0x1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field public static final VENDOR_API_LEVEL_1:I = 0x1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field public static final VENDOR_API_LEVEL_2:I = 0x2
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field public static final VENDOR_API_LEVEL_3:I = 0x3
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field


# virtual methods
.method public getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVendorApiLevel()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented. Must override in a subclass."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWindowAreaComponent()Landroidx/window/extensions/area/WindowAreaComponent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
