.class public final enum Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/base/TerraceThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskRunnerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

.field public static final enum PASSWORD_DATA:Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

.field public static final enum PERSONAL_DATA:Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;


# direct methods
.method private static synthetic $values()[Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;
    .locals 2

    sget-object v0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->PERSONAL_DATA:Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    sget-object v1, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->PASSWORD_DATA:Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    filled-new-array {v0, v1}, [Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    const-string v1, "PERSONAL_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->PERSONAL_DATA:Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    new-instance v0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    const-string v1, "PASSWORD_DATA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->PASSWORD_DATA:Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->$values()[Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->$VALUES:[Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;
    .locals 1

    const-class v0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    return-object p0
.end method

.method public static values()[Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;
    .locals 1

    sget-object v0, Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->$VALUES:[Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    invoke-virtual {v0}, [Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/terrace/base/TerraceThreadUtils$TaskRunnerType;

    return-object v0
.end method
