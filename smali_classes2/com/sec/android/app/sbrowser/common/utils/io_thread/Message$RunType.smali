.class public final enum Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

.field public static final enum DISORDER:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

.field public static final enum ORDER:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;->ORDER:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;->DISORDER:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    const-string v1, "ORDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;->ORDER:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    const-string v1, "DISORDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;->DISORDER:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;->$values()[Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    return-object v0
.end method
