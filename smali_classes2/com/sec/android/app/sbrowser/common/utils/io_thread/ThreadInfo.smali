.class public final enum Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

.field public static final enum CONTENTS_PUSH:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

.field public static final enum GLOBAL_CONFIG:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

.field public static final enum IUID:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

.field public static final enum MULTICP_NATIVE:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

.field public static final enum QUICK_ACCESS:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

.field public static final enum SI_LOG:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

.field public static final enum TEST:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

.field public static final enum TNC:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

.field public static final enum TRENDING_KEYWORD:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;


# instance fields
.field private final mMaxThreadCount:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;
    .locals 9

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->TEST:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->IUID:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->GLOBAL_CONFIG:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->TRENDING_KEYWORD:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->QUICK_ACCESS:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->CONTENTS_PUSH:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    sget-object v6, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->TNC:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    sget-object v7, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->SI_LOG:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    sget-object v8, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->MULTICP_NATIVE:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    filled-new-array/range {v0 .. v8}, [Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    const-string v1, "TEST"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->TEST:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    const-string v1, "IUID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->IUID:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    const-string v1, "GLOBAL_CONFIG"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->GLOBAL_CONFIG:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    const-string v1, "TRENDING_KEYWORD"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->TRENDING_KEYWORD:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    const-string v1, "QUICK_ACCESS"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->QUICK_ACCESS:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    const-string v1, "CONTENTS_PUSH"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->CONTENTS_PUSH:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    const-string v1, "TNC"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->TNC:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    const-string v1, "SI_LOG"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->SI_LOG:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    const-string v1, "MULTICP_NATIVE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->MULTICP_NATIVE:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->$values()[Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->mMaxThreadCount:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    return-object v0
.end method


# virtual methods
.method public getMaxThreadCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->mMaxThreadCount:I

    return p0
.end method
