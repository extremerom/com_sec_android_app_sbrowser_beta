.class final Landroidx/window/ExtensionCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/ExtensionInterfaceCompat;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtensionVersionCompat"


# instance fields
.field private mWindowExtension:Landroidx/window/extensions/ExtensionInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/window/extensions/ExtensionProvider;->getExtensionImpl(Landroid/content/Context;)Landroidx/window/extensions/ExtensionInterface;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Extension provider returned null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Landroidx/window/extensions/ExtensionDeviceState;)Landroidx/window/DeviceState;
    .locals 0

    invoke-static {p0}, Landroidx/window/ExtensionCompat;->deviceStateFromExtension(Landroidx/window/extensions/ExtensionDeviceState;)Landroidx/window/DeviceState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Landroidx/window/extensions/ExtensionWindowLayoutInfo;)Landroidx/window/WindowLayoutInfo;
    .locals 0

    invoke-static {p0}, Landroidx/window/ExtensionCompat;->windowLayoutInfoFromExtension(Landroidx/window/extensions/ExtensionWindowLayoutInfo;)Landroidx/window/WindowLayoutInfo;

    move-result-object p0

    return-object p0
.end method

.method private static deviceStateFromExtension(Landroidx/window/extensions/ExtensionDeviceState;)Landroidx/window/DeviceState;
    .locals 1
    .param p0    # Landroidx/window/extensions/ExtensionDeviceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Landroidx/window/DeviceState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/window/DeviceState;-><init>(I)V

    return-object p0

    :cond_0
    invoke-static {p0}, Landroidx/window/ExtensionCompat;->postureFromExtension(Landroidx/window/extensions/ExtensionDeviceState;)I

    move-result p0

    new-instance v0, Landroidx/window/DeviceState;

    invoke-direct {v0, p0}, Landroidx/window/DeviceState;-><init>(I)V

    return-object v0
.end method

.method private static displayFeatureFromExtension(Landroidx/window/extensions/ExtensionDisplayFeature;)Landroidx/window/DisplayFeature;
    .locals 2

    new-instance v0, Landroidx/window/DisplayFeature;

    invoke-virtual {p0}, Landroidx/window/extensions/ExtensionDisplayFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/window/extensions/ExtensionDisplayFeature;->getType()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/window/DisplayFeature;-><init>(Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method private static displayFeatureListFromExtension(Landroidx/window/extensions/ExtensionWindowLayoutInfo;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/extensions/ExtensionWindowLayoutInfo;",
            ")",
            "Ljava/util/List<",
            "Landroidx/window/DisplayFeature;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/window/extensions/ExtensionWindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/ExtensionDisplayFeature;

    invoke-static {v1}, Landroidx/window/ExtensionCompat;->displayFeatureFromExtension(Landroidx/window/extensions/ExtensionDisplayFeature;)Landroidx/window/DisplayFeature;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getExtensionVersion()Landroidx/window/Version;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroidx/window/extensions/ExtensionProvider;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroidx/window/Version;->parse(Ljava/lang/String;)Landroidx/window/Version;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static postureFromExtension(Landroidx/window/extensions/ExtensionDeviceState;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/window/extensions/ExtensionDeviceState;->getPosture()I

    move-result p0

    const/4 v0, 0x4

    if-le p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private static windowLayoutInfoFromExtension(Landroidx/window/extensions/ExtensionWindowLayoutInfo;)Landroidx/window/WindowLayoutInfo;
    .locals 1
    .param p0    # Landroidx/window/extensions/ExtensionWindowLayoutInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Landroidx/window/WindowLayoutInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroidx/window/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Landroidx/window/ExtensionCompat;->displayFeatureListFromExtension(Landroidx/window/extensions/ExtensionWindowLayoutInfo;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Landroidx/window/WindowLayoutInfo;

    invoke-direct {v0, p0}, Landroidx/window/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getDeviceState()Landroidx/window/DeviceState;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    invoke-interface {p0}, Landroidx/window/extensions/ExtensionInterface;->getDeviceState()Landroidx/window/extensions/ExtensionDeviceState;

    move-result-object p0

    invoke-static {p0}, Landroidx/window/ExtensionCompat;->deviceStateFromExtension(Landroidx/window/extensions/ExtensionDeviceState;)Landroidx/window/DeviceState;

    move-result-object p0

    return-object p0
.end method

.method public getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/WindowLayoutInfo;
    .locals 0
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    invoke-interface {p0, p1}, Landroidx/window/extensions/ExtensionInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/extensions/ExtensionWindowLayoutInfo;

    move-result-object p0

    invoke-static {p0}, Landroidx/window/ExtensionCompat;->windowLayoutInfoFromExtension(Landroidx/window/extensions/ExtensionWindowLayoutInfo;)Landroidx/window/WindowLayoutInfo;

    move-result-object p0

    return-object p0
.end method

.method public onDeviceStateListenersChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    invoke-interface {p0, p1}, Landroidx/window/extensions/ExtensionInterface;->onDeviceStateListenersChanged(Z)V

    return-void
.end method

.method public onWindowLayoutChangeListenerAdded(Landroid/os/IBinder;)V
    .locals 0
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    invoke-interface {p0, p1}, Landroidx/window/extensions/ExtensionInterface;->onWindowLayoutChangeListenerAdded(Landroid/os/IBinder;)V

    return-void
.end method

.method public onWindowLayoutChangeListenerRemoved(Landroid/os/IBinder;)V
    .locals 0
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    invoke-interface {p0, p1}, Landroidx/window/extensions/ExtensionInterface;->onWindowLayoutChangeListenerRemoved(Landroid/os/IBinder;)V

    return-void
.end method

.method public setExtensionCallback(Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V
    .locals 2
    .param p1    # Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    new-instance v1, Landroidx/window/ExtensionCompat$1;

    invoke-direct {v1, p0, p1}, Landroidx/window/ExtensionCompat$1;-><init>(Landroidx/window/ExtensionCompat;Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V

    invoke-interface {v0, v1}, Landroidx/window/extensions/ExtensionInterface;->setExtensionCallback(Landroidx/window/extensions/ExtensionInterface$ExtensionCallback;)V

    return-void
.end method

.method public validateExtensionInterface()Z
    .locals 10

    const-class v0, Landroid/os/IBinder;

    const-string v1, "Illegal return type for \'onWindowLayoutChangeListenerRemoved\': "

    const-string v2, "Illegal return type for \'onWindowLayoutChangeListenerAdded\': "

    const-string v3, "Illegal return type for \'getWindowLayoutInfo\': "

    const-string v4, "Illegal return type for \'setExtensionCallback\': "

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setExtensionCallback"

    const-class v8, Landroidx/window/extensions/ExtensionInterface$ExtensionCallback;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v4, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    invoke-interface {v4}, Landroidx/window/extensions/ExtensionInterface;->getDeviceState()Landroidx/window/extensions/ExtensionDeviceState;

    iget-object v4, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Landroidx/window/extensions/ExtensionInterface;->onDeviceStateListenersChanged(Z)V

    iget-object v4, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v8, "getWindowLayoutInfo"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Landroidx/window/extensions/ExtensionWindowLayoutInfo;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v3, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onWindowLayoutChangeListenerAdded"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, p0, Landroidx/window/ExtensionCompat;->mWindowExtension:Landroidx/window/extensions/ExtensionInterface;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "onWindowLayoutChangeListenerRemoved"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroidx/window/extensions/ExtensionDeviceState;

    invoke-direct {p0, v5}, Landroidx/window/extensions/ExtensionDeviceState;-><init>(I)V

    invoke-virtual {p0}, Landroidx/window/extensions/ExtensionDeviceState;->getPosture()I

    new-instance p0, Landroidx/window/extensions/ExtensionDisplayFeature;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v0, v6}, Landroidx/window/extensions/ExtensionDisplayFeature;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p0}, Landroidx/window/extensions/ExtensionDisplayFeature;->getBounds()Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/window/extensions/ExtensionDisplayFeature;->getType()I

    new-instance p0, Landroidx/window/extensions/ExtensionWindowLayoutInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroidx/window/extensions/ExtensionWindowLayoutInfo;-><init>(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/window/extensions/ExtensionWindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    return v6

    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v5
.end method
