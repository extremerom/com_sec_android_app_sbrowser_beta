.class public final enum Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

.field public static final enum BOOLEAN:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

.field public static final enum INT:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

.field public static final enum LONG:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

.field public static final enum STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->INT:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->LONG:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->BOOLEAN:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->INT:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v1, "LONG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->LONG:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v1, "STRING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->STRING:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->BOOLEAN:Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->$values()[Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/model/global_config/FieldType;

    return-object v0
.end method
