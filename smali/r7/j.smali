.class public final enum Lr7/j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final synthetic $VALUES:[Lr7/j;

.field private static final HANDLER:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation
.end field

.field public static final enum INSTANCE:Lr7/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr7/j;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr7/j;->INSTANCE:Lr7/j;

    filled-new-array {v0}, [Lr7/j;

    move-result-object v0

    sput-object v0, Lr7/j;->$VALUES:[Lr7/j;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lr7/j;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr7/j;
    .locals 1

    const-class v0, Lr7/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr7/j;

    return-object p0
.end method

.method public static values()[Lr7/j;
    .locals 1

    sget-object v0, Lr7/j;->$VALUES:[Lr7/j;

    invoke-virtual {v0}, [Lr7/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr7/j;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lr7/j;->HANDLER:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
