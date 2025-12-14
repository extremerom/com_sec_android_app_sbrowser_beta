.class public Lcom/sec/sbrowser/spl/util/ReflectBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/util/ReflectBase$QuickWrapper;
    }
.end annotation


# static fields
.field public static final STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;


# instance fields
.field protected final mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectBase;

    invoke-direct {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>()V

    sput-object v0, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    const-string p1, "Instance is null"

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public instance()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    return-object p0
.end method
