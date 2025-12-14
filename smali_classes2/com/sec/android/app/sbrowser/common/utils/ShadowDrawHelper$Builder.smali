.class public final Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0005J\u0016\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;",
        "",
        "<init>",
        "()V",
        "shadowColor",
        "",
        "shadowOffsetX",
        "shadowOffsetY",
        "elevation",
        "",
        "cornerRadius",
        "setShadowColorRes",
        "context",
        "Landroid/content/Context;",
        "shadowColorRes",
        "setShadowOffset",
        "offsetX",
        "offsetY",
        "setElevation",
        "setCornerRadius",
        "build",
        "Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cornerRadius:F

.field private elevation:F

.field private shadowColor:I

.field private shadowOffsetX:I

.field private shadowOffsetY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->shadowColor:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->shadowOffsetX:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->shadowOffsetY:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;-><init>(III)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->elevation:F

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->setElevation(F)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->cornerRadius:F

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper;->setCornerRadius(F)V

    return-object v0
.end method

.method public final setCornerRadius(F)Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->cornerRadius:F

    return-object p0
.end method

.method public final setElevation(F)Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->elevation:F

    return-object p0
.end method

.method public final setShadowColorRes(Landroid/content/Context;I)Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->shadowColor:I

    return-object p0
.end method

.method public final setShadowOffset(II)Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->shadowOffsetX:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/utils/ShadowDrawHelper$Builder;->shadowOffsetY:I

    return-object p0
.end method
