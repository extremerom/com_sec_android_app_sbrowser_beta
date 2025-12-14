.class public Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ReflectionContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sViewTreeObserverInternalInsetsInfoReflection:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverInternalInsetsInfoReflection;

.field private static sViewTreeObserverReflection:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverReflection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getViewTreeObserver()Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverReflection;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ReflectionContainer;->sViewTreeObserverReflection:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverReflection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverReflection;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverReflection;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ReflectionContainer;->sViewTreeObserverReflection:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverReflection;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ReflectionContainer;->sViewTreeObserverReflection:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverReflection;

    return-object v0
.end method

.method public static getViewTreeObserverInternalInsetsInfo()Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverInternalInsetsInfoReflection;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ReflectionContainer;->sViewTreeObserverInternalInsetsInfoReflection:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverInternalInsetsInfoReflection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverInternalInsetsInfoReflection;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverInternalInsetsInfoReflection;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ReflectionContainer;->sViewTreeObserverInternalInsetsInfoReflection:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverInternalInsetsInfoReflection;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ReflectionContainer;->sViewTreeObserverInternalInsetsInfoReflection:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/ViewTreeObserverInternalInsetsInfoReflection;

    return-object v0
.end method
