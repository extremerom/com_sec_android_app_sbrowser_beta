.class public Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams$Api30Impl;
    }
.end annotation


# instance fields
.field private final mAreDefaultConstraintsSatisfied:Z

.field private final mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mParentConfiguration:Landroid/content/res/Configuration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mParentWindowLayoutInfo:Landroidx/window/extensions/layout/WindowLayoutInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mParentWindowMetrics:Landroid/view/WindowMetrics;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mSplitRuleTag:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/WindowMetrics;Landroid/content/res/Configuration;Landroidx/window/extensions/layout/WindowLayoutInfo;Landroidx/window/extensions/embedding/SplitAttributes;ZLjava/lang/String;)V
    .locals 0
    .param p1    # Landroid/view/WindowMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/window/extensions/layout/WindowLayoutInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/window/extensions/embedding/SplitAttributes;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mParentWindowMetrics:Landroid/view/WindowMetrics;

    iput-object p2, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mParentConfiguration:Landroid/content/res/Configuration;

    iput-object p3, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mParentWindowLayoutInfo:Landroidx/window/extensions/layout/WindowLayoutInfo;

    iput-object p4, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    iput-boolean p5, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mAreDefaultConstraintsSatisfied:Z

    iput-object p6, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mSplitRuleTag:Ljava/lang/String;

    return-void
.end method

.method private static windowMetricsToString(Landroid/view/WindowMetrics;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/view/WindowMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams$Api30Impl;->windowMetricsToString(Landroid/view/WindowMetrics;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "WindowMetrics didn\'t exist in R."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public areDefaultConstraintsSatisfied()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mAreDefaultConstraintsSatisfied:Z

    return p0
.end method

.method public getDefaultSplitAttributes()Landroidx/window/extensions/embedding/SplitAttributes;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    return-object p0
.end method

.method public getParentConfiguration()Landroid/content/res/Configuration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/content/res/Configuration;

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mParentConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public getParentWindowLayoutInfo()Landroidx/window/extensions/layout/WindowLayoutInfo;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mParentWindowLayoutInfo:Landroidx/window/extensions/layout/WindowLayoutInfo;

    return-object p0
.end method

.method public getParentWindowMetrics()Landroid/view/WindowMetrics;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mParentWindowMetrics:Landroid/view/WindowMetrics;

    return-object p0
.end method

.method public getSplitRuleTag()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mSplitRuleTag:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mParentWindowMetrics:Landroid/view/WindowMetrics;

    invoke-static {v1}, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->windowMetricsToString(Landroid/view/WindowMetrics;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mParentConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mParentWindowLayoutInfo:Landroidx/window/extensions/layout/WindowLayoutInfo;

    iget-object v4, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mDefaultSplitAttributes:Landroidx/window/extensions/embedding/SplitAttributes;

    iget-boolean v5, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mAreDefaultConstraintsSatisfied:Z

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;->mSplitRuleTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":{windowMetrics="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", configuration="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", windowLayoutInfo="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", defaultSplitAttributes="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", areDefaultConstraintsSatisfied="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", tag="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
