.class public final enum Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

.field public static final enum ADDRESS:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

.field public static final enum CARD:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

.field public static final enum LOGIN:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;


# instance fields
.field private final mExtraName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->ADDRESS:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    sget-object v1, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->CARD:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    sget-object v2, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->LOGIN:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    const/4 v1, 0x0

    const-string v2, "address"

    const-string v3, "ADDRESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->ADDRESS:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    const/4 v1, 0x1

    const-string v2, "card"

    const-string v3, "CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->CARD:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    const/4 v1, 0x2

    const-string v2, "login"

    const-string v3, "LOGIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->LOGIN:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->$values()[Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->$VALUES:[Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->mExtraName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->$VALUES:[Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->mExtraName:Ljava/lang/String;

    return-object p0
.end method
