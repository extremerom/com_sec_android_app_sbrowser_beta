.class Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$Api28CompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$CompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api28CompatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat$Api28CompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of p0, p1, Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverPopupType(Landroid/view/View;Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method
