.class public Lorg/chromium/base/CallbackUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DO_NOTHING_CALLBACK:Lorg/chromium/base/Callback;

.field private static final DO_NOTHING_RUNNABLE:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/base/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/base/a;-><init>(I)V

    sput-object v0, Lorg/chromium/base/CallbackUtils;->DO_NOTHING_CALLBACK:Lorg/chromium/base/Callback;

    new-instance v0, Lorg/chromium/base/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/chromium/base/f;-><init>(I)V

    sput-object v0, Lorg/chromium/base/CallbackUtils;->DO_NOTHING_RUNNABLE:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/CallbackUtils;->lambda$static$0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/CallbackUtils;->lambda$static$1()V

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$static$1()V
    .locals 0

    return-void
.end method
