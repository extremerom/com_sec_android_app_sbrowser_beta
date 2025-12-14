.class public Lcom/sec/terrace/services/TerraceServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/TerraceServiceManager$Factory;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static final FACTORY_MAP:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "+",
            "Lorg/chromium/mojo/bindings/Interface;",
            "+",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">;",
            "Lcom/sec/terrace/services/TerraceServiceManager$Factory<",
            "+",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/TerraceServiceManager;->FACTORY_MAP:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/services/TerraceServiceManager;->lambda$createInterfaceRegistryForContext$0(Ljava/util/Map$Entry;)Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Lorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 3
    .param p0    # Lorg/chromium/mojo/bindings/Interface$Manager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(",
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "TI;TP;>;)TP;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Interface$Manager;->getInterfaceRequest(Lorg/chromium/mojo/system/Core;)Lorg/chromium/mojo/system/Pair;

    move-result-object v0

    sget-object v1, Lcom/sec/terrace/services/TerraceServiceManager;->FACTORY_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, v0, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/mojo/bindings/Interface$Proxy;

    return-object p0

    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/services/TerraceServiceManager$Factory;

    invoke-interface {v1}, Lcom/sec/terrace/services/TerraceServiceManager$Factory;->get()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0, v1, v2}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/InterfaceRequest;)Lorg/chromium/mojo/bindings/Router;

    iget-object p0, v0, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/mojo/bindings/Interface$Proxy;

    return-object p0
.end method

.method private static createInterfaceRegistryForContext(J)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/services/TerraceServiceManager;->FACTORY_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lorg/chromium/mojo/system/Core;->acquireNativeHandle(J)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/services/service_manager/InterfaceRegistry;->create(Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/services/service_manager/InterfaceRegistry;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v2, LAa/a;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v0}, LAa/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lorg/chromium/services/service_manager/InterfaceRegistry;->addInterface(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/services/service_manager/InterfaceFactory;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$createInterfaceRegistryForContext$0(Ljava/util/Map$Entry;)Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/TerraceServiceManager$Factory;

    invoke-interface {p0}, Lcom/sec/terrace/services/TerraceServiceManager$Factory;->get()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    return-object p0
.end method

.method public static register(Lorg/chromium/mojo/bindings/Interface$Manager;Lcom/sec/terrace/services/TerraceServiceManager$Factory;)V
    .locals 1
    .param p0    # Lorg/chromium/mojo/bindings/Interface$Manager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/sec/terrace/services/TerraceServiceManager$Factory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(",
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "TI;+",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">;",
            "Lcom/sec/terrace/services/TerraceServiceManager$Factory<",
            "TI;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/sec/terrace/services/TerraceServiceManager;->FACTORY_MAP:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
