.class public abstract Lg9/d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public a:Lg9/b;

.field public b:Ljava/lang/Float;

.field public c:Lg9/a;

.field public d:J

.field public final e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lg9/b;->NORMAL:Lg9/b;

    iput-object p1, p0, Lg9/d;->a:Lg9/b;

    const/high16 p1, 0x42700000    # 60.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lg9/d;->b:Ljava/lang/Float;

    sget-object p2, Lg9/a;->READY:Lg9/a;

    iput-object p2, p0, Lg9/d;->c:Lg9/a;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p2, v0, :cond_0

    invoke-static {p0}, LA2/e;->a(Lg9/d;)F

    move-result p1

    :cond_0
    iput p1, p0, Lg9/d;->e:F

    return-void
.end method

.method private final setAnimationState(Lg9/a;)V
    .locals 3

    iput-object p1, p0, Lg9/d;->c:Lg9/a;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_2

    iget-object v2, p0, Lg9/d;->b:Ljava/lang/Float;

    if-eqz v2, :cond_2

    invoke-static {}, Lq9/b;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lt v0, v1, :cond_2

    sget-object v0, Lg9/c;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lg9/d;->b:Ljava/lang/Float;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    iget p1, p0, Lg9/d;->e:F

    :goto_0
    invoke-static {p0, p1}, LA2/e;->C(Lg9/d;F)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "EffectView"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lg9/a;->RUNNING:Lg9/a;

    invoke-direct {p0, v0}, Lg9/d;->setAnimationState(Lg9/a;)V

    return-void
.end method

.method public final getAnimationState()Lg9/a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lg9/d;->c:Lg9/a;

    return-object p0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lg9/d;->d:J

    return-wide v0
.end method

.method public final getFrameRatePolicy()Lg9/b;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lg9/d;->a:Lg9/b;

    return-object p0
.end method

.method public final getRequestedEffectFrameRate$sesl_visualeffect_INTERNAL_2_0_36_release()Ljava/lang/Float;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lg9/d;->b:Ljava/lang/Float;

    return-object p0
.end method

.method public final setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lg9/d;->d:J

    return-void
.end method

.method public final setFrameRatePolicy(Lg9/b;)V
    .locals 1
    .param p1    # Lg9/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg9/d;->a:Lg9/b;

    sget-object v0, Lg9/c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/high16 p1, 0x42700000    # 60.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/high16 p1, 0x41f00000    # 30.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lg9/d;->b:Ljava/lang/Float;

    return-void
.end method

.method public final setRequestedEffectFrameRate$sesl_visualeffect_INTERNAL_2_0_36_release(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lg9/d;->b:Ljava/lang/Float;

    return-void
.end method
