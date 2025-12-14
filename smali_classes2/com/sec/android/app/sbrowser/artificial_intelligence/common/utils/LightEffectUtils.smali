.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00022\u00020\u0001:\u0002\u0003\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;",
        "",
        "Companion",
        "CornerRadius",
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


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;

    return-void
.end method

.method public static final createProcessingLightEffectAnimation(Landroid/content/Context;Landroid/view/View;FLl9/a;F)Ll9/e;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ll9/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;->createProcessingLightEffectAnimation(Landroid/content/Context;Landroid/view/View;FLl9/a;F)Ll9/e;

    move-result-object p0

    return-object p0
.end method

.method public static final createTransitionLightEffectAnimation(Landroid/content/Context;Landroid/view/View;FLn9/a;)Ln9/d;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ln9/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;->createTransitionLightEffectAnimation(Landroid/content/Context;Landroid/view/View;FLn9/a;)Ln9/d;

    move-result-object p0

    return-object p0
.end method

.method public static final showLightEffectAnimation(Landroid/view/View;Landroid/graphics/drawable/Drawable;ILcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ZLm9/b;Lk9/p;Lk9/n;JLk9/o;)Lk9/r;
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lm9/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lk9/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lk9/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lk9/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;->showLightEffectAnimation(Landroid/view/View;Landroid/graphics/drawable/Drawable;ILcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ZLm9/b;Lk9/p;Lk9/n;JLk9/o;)Lk9/r;

    move-result-object v0

    return-object v0
.end method
