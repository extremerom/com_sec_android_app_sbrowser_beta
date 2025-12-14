.class Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/util/ReflectBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickWrapper"
.end annotation


# static fields
.field private static sQuickWrapper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mVolatileInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;->sQuickWrapper:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(I)V

    return-void
.end method

.method public static getInstance()Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;->sQuickWrapper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;

    invoke-direct {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;-><init>()V

    sget-object v1, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;->sQuickWrapper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static wrapper(Ljava/lang/Object;)Lcom/sec/sbrowser/spl/util/ReflectBase;
    .locals 1

    invoke-static {}, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;->getInstance()Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;

    move-result-object v0

    iput-object p0, v0, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;->mVolatileInstance:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public instance()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;->getInstance()Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;

    move-result-object p0

    iget-object v0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;->mVolatileInstance:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;->mVolatileInstance:Ljava/lang/Object;

    return-object v0
.end method
