.class public Lorg/chromium/ui/util/MotionEventUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sFailedDoubleReflection:Z

.field private static sFailedReflection:Z

.field private static sGetHistoricalEventTimeNanoMethod:Ljava/lang/reflect/Method;

.field private static sGetTimeNanoMethod:Ljava/lang/reflect/Method;


# direct methods
.method private static approximateNanosFromEvent(Landroid/view/MotionEvent;I)J
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide p0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static getEventTimeNanos(Landroid/view/MotionEvent;)J
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->e(Landroid/view/MotionEvent;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-boolean v0, Lorg/chromium/ui/util/MotionEventUtils;->sFailedReflection:Z

    const-wide/32 v1, 0xf4240

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    mul-long/2addr v3, v1

    return-wide v3

    :cond_1
    :try_start_0
    sget-object v0, Lorg/chromium/ui/util/MotionEventUtils;->sGetTimeNanoMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const-class v0, Landroid/view/MotionEvent;

    const-string v4, "getEventTimeNano"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/util/MotionEventUtils;->sGetTimeNanoMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lorg/chromium/ui/util/MotionEventUtils;->sGetTimeNanoMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v3, "MotionEventUtils::getEventTimeNano error"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/ui/util/MotionEventUtils;->sFailedReflection:Z

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    mul-long v0, v3, v1

    :goto_2
    return-wide v0
.end method

.method public static getHistoricalEventTimeNanos(Landroid/view/MotionEvent;I)J
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/chromium/ui/util/a;->c(Landroid/view/MotionEvent;I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    sget-boolean v0, Lorg/chromium/ui/util/MotionEventUtils;->sFailedDoubleReflection:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lorg/chromium/ui/util/MotionEventUtils;->approximateNanosFromEvent(Landroid/view/MotionEvent;I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/chromium/ui/util/MotionEventUtils;->sGetHistoricalEventTimeNanoMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Class;

    const-string v2, "getDeclaredMethod"

    const-class v3, Ljava/lang/String;

    const-class v4, [Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getHistoricalEventTimeNano"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sput-object v1, Lorg/chromium/ui/util/MotionEventUtils;->sGetHistoricalEventTimeNanoMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lorg/chromium/ui/util/MotionEventUtils;->sGetHistoricalEventTimeNanoMethod:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :goto_1
    const-string v2, "MotionEventUtils::getHistoricalEventTimeNanos error"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v0, Lorg/chromium/ui/util/MotionEventUtils;->sFailedDoubleReflection:Z

    invoke-static {p0, p1}, Lorg/chromium/ui/util/MotionEventUtils;->approximateNanosFromEvent(Landroid/view/MotionEvent;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static isTrackpadEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method
