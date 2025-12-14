.class Lcom/osp/app/signin/sasdk/core/SaSDKManager$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/osp/app/signin/sasdk/core/SaSDKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/osp/app/signin/sasdk/core/SaSDKManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;

    invoke-direct {v0}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;-><init>()V

    sput-object v0, Lcom/osp/app/signin/sasdk/core/SaSDKManager$InstanceHolder;->INSTANCE:Lcom/osp/app/signin/sasdk/core/SaSDKManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string v0, "SaSDKManager InstanceHolder cannot be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000()Lcom/osp/app/signin/sasdk/core/SaSDKManager;
    .locals 1

    sget-object v0, Lcom/osp/app/signin/sasdk/core/SaSDKManager$InstanceHolder;->INSTANCE:Lcom/osp/app/signin/sasdk/core/SaSDKManager;

    return-object v0
.end method
