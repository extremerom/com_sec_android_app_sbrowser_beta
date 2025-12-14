.class public Lorg/chromium/ui/modelutil/PropertyModel;
.super Lorg/chromium/ui/modelutil/PropertyObservable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/modelutil/PropertyModel$FloatContainer;,
        Lorg/chromium/ui/modelutil/PropertyModel$IntContainer;,
        Lorg/chromium/ui/modelutil/PropertyModel$LongContainer;,
        Lorg/chromium/ui/modelutil/PropertyModel$BooleanContainer;,
        Lorg/chromium/ui/modelutil/PropertyModel$ObjectContainer;,
        Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$ValueContainer;,
        Lorg/chromium/ui/modelutil/PropertyModel$Builder;,
        Lorg/chromium/ui/modelutil/PropertyModel$WritableTransformingObjectPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$ReadableTransformingObjectPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$WritableLongPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$ReadableLongPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$WritableFloatPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$ReadableFloatPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;,
        Lorg/chromium/ui/modelutil/PropertyModel$NamedPropertyKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/ui/modelutil/PropertyObservable<",
        "Lorg/chromium/ui/modelutil/PropertyKey;",
        ">;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            "Lorg/chromium/ui/modelutil/PropertyModel$ValueContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransformers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableTransformingObjectPropertyKey<",
            "**>;",
            "Ljava/util/function/Function<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            "Lorg/chromium/ui/modelutil/PropertyModel$ValueContainer;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableTransformingObjectPropertyKey<",
            "**>;",
            "Ljava/util/function/Function<",
            "**>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/ui/modelutil/PropertyObservable;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    iput-object p2, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mTransformers:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/modelutil/PropertyModel;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic a([Lorg/chromium/ui/modelutil/PropertyKey;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lorg/chromium/ui/modelutil/PropertyModel;->buildData([Lorg/chromium/ui/modelutil/PropertyKey;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static buildData([Lorg/chromium/ui/modelutil/PropertyKey;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            ")",
            "Ljava/util/Map<",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            "Lorg/chromium/ui/modelutil/PropertyModel$ValueContainer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method private validateKey(Lorg/chromium/ui/modelutil/PropertyKey;)V
    .locals 3

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid key passed in: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Current data is: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public compareValue(Lorg/chromium/ui/modelutil/PropertyModel;Lorg/chromium/ui/modelutil/PropertyKey;)Z
    .locals 2

    invoke-direct {p0, p2}, Lorg/chromium/ui/modelutil/PropertyModel;->validateKey(Lorg/chromium/ui/modelutil/PropertyKey;)V

    invoke-direct {p1, p2}, Lorg/chromium/ui/modelutil/PropertyModel;->validateKey(Lorg/chromium/ui/modelutil/PropertyKey;)V

    iget-object v0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-static {v0}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;->a(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableFloatPropertyKey;)F
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->validateKey(Lorg/chromium/ui/modelutil/PropertyKey;)V

    iget-object p0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/PropertyModel$FloatContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/chromium/ui/modelutil/PropertyModel$FloatContainer;->value:F

    :goto_0
    return p0
.end method

.method public get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->validateKey(Lorg/chromium/ui/modelutil/PropertyKey;)V

    iget-object p0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/PropertyModel$IntContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/chromium/ui/modelutil/PropertyModel$IntContainer;->value:I

    :goto_0
    return p0
.end method

.method public get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/chromium/build/annotations/NullUnmarked;
    .end annotation

    invoke-direct {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->validateKey(Lorg/chromium/ui/modelutil/PropertyKey;)V

    iget-object p0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/PropertyModel$ObjectContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/modelutil/PropertyModel$ObjectContainer;->value:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->validateKey(Lorg/chromium/ui/modelutil/PropertyKey;)V

    iget-object p0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/PropertyModel$BooleanContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lorg/chromium/ui/modelutil/PropertyModel$BooleanContainer;->value:Z

    :goto_0
    return p0
.end method

.method public getAllProperties()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/modelutil/PropertyKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllSetProperties()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/modelutil/PropertyKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public set(Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->validateKey(Lorg/chromium/ui/modelutil/PropertyKey;)V

    iget-object v0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/modelutil/PropertyModel$BooleanContainer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$BooleanContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$BooleanContainer;-><init>(I)V

    iget-object v1, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lorg/chromium/ui/modelutil/PropertyModel$BooleanContainer;->value:Z

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    :goto_0
    iput-boolean p2, v0, Lorg/chromium/ui/modelutil/PropertyModel$BooleanContainer;->value:Z

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/PropertyObservable;->notifyPropertyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public set(Lorg/chromium/ui/modelutil/PropertyModel$WritableFloatPropertyKey;F)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->validateKey(Lorg/chromium/ui/modelutil/PropertyKey;)V

    iget-object v0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/modelutil/PropertyModel$FloatContainer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$FloatContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$FloatContainer;-><init>(I)V

    iget-object v1, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/chromium/ui/modelutil/PropertyModel$FloatContainer;->value:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    return-void

    :cond_1
    :goto_0
    iput p2, v0, Lorg/chromium/ui/modelutil/PropertyModel$FloatContainer;->value:F

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/PropertyObservable;->notifyPropertyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public set(Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->validateKey(Lorg/chromium/ui/modelutil/PropertyKey;)V

    iget-object v0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/modelutil/PropertyModel$IntContainer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$IntContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/ui/modelutil/PropertyModel$IntContainer;-><init>(I)V

    iget-object v1, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/chromium/ui/modelutil/PropertyModel$IntContainer;->value:I

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    :goto_0
    iput p2, v0, Lorg/chromium/ui/modelutil/PropertyModel$IntContainer;->value:I

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/PropertyObservable;->notifyPropertyChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public set(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation build Lorg/chromium/build/annotations/NullUnmarked;
    .end annotation

    invoke-direct {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->validateKey(Lorg/chromium/ui/modelutil/PropertyKey;)V

    iget-object v0, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/modelutil/PropertyModel$ObjectContainer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/ui/modelutil/PropertyModel$ObjectContainer;

    invoke-direct {v0, p2}, Lorg/chromium/ui/modelutil/PropertyModel$ObjectContainer;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/chromium/ui/modelutil/PropertyModel;->mData:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;->a(Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/chromium/ui/modelutil/PropertyModel$ObjectContainer;->value:Ljava/lang/Object;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iput-object p2, v0, Lorg/chromium/ui/modelutil/PropertyModel$ObjectContainer;->value:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/PropertyObservable;->notifyPropertyChanged(Ljava/lang/Object;)V

    return-void
.end method
