.class public final LA4/d;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final b:LA4/d;

.field public static final c:LA4/d;

.field public static final d:LA4/d;

.field public static final e:LA4/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LA4/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA4/d;-><init>(II)V

    sput-object v0, LA4/d;->b:LA4/d;

    new-instance v0, LA4/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LA4/d;-><init>(II)V

    sput-object v0, LA4/d;->c:LA4/d;

    new-instance v0, LA4/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LA4/d;-><init>(II)V

    sput-object v0, LA4/d;->d:LA4/d;

    new-instance v0, LA4/d;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LA4/d;-><init>(II)V

    sput-object v0, LA4/d;->e:LA4/d;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LA4/d;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget p0, p0, LA4/d;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "newSingleThreadExecutor(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LNc/a0;

    invoke-direct {v0, p0}, LNc/a0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_0
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget v0, LOc/c;->a:I

    new-instance v0, LOc/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, LOc/b;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-object v0

    :pswitch_1
    const-string p0, "_AppFunctionInvoker"

    invoke-static {p0}, LG5/q;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.google.android.appfunctions.internal.ClassRegistry<com.google.android.appfunctions.internal.AppFunctionInvoker>"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/appfunctions/internal/ClassRegistry;

    return-object p0

    :pswitch_2
    const-string p0, "_AppFunctionInventory"

    invoke-static {p0}, LG5/q;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.google.android.appfunctions.internal.ClassRegistry<com.google.android.appfunctions.internal.AppFunctionInventory>"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/appfunctions/internal/ClassRegistry;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
