.class public Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;,
        Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$Api28CompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$Api28CompatImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$Api28CompatImpl;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->IMPL:Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;

    return-void
.end method

.method public static setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->IMPL:Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setTooltipText(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->IMPL:Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->IMPL:Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->IMPL:Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Z)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->IMPL:Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method
