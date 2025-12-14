.class public final enum Lo1/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lo1/j;

.field public static final enum BOOLEAN:Lo1/j;

.field public static final enum DOUBLE:Lo1/j;

.field public static final enum FLOAT:Lo1/j;

.field public static final enum INTEGER:Lo1/j;

.field public static final enum LONG:Lo1/j;

.field public static final enum STRING:Lo1/j;

.field public static final enum STRING_SET:Lo1/j;

.field public static final enum VALUE_NOT_SET:Lo1/j;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lo1/j;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lo1/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo1/j;->BOOLEAN:Lo1/j;

    new-instance v1, Lo1/j;

    const-string v4, "FLOAT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lo1/j;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lo1/j;->FLOAT:Lo1/j;

    new-instance v3, Lo1/j;

    const-string v4, "INTEGER"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lo1/j;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lo1/j;->INTEGER:Lo1/j;

    new-instance v4, Lo1/j;

    const-string v5, "LONG"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lo1/j;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lo1/j;->LONG:Lo1/j;

    new-instance v5, Lo1/j;

    const-string v6, "STRING"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lo1/j;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lo1/j;->STRING:Lo1/j;

    new-instance v6, Lo1/j;

    const-string v7, "STRING_SET"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v8, v9}, Lo1/j;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lo1/j;->STRING_SET:Lo1/j;

    new-instance v7, Lo1/j;

    const-string v8, "DOUBLE"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v9, v10}, Lo1/j;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lo1/j;->DOUBLE:Lo1/j;

    new-instance v8, Lo1/j;

    const-string v9, "VALUE_NOT_SET"

    invoke-direct {v8, v9, v10, v2}, Lo1/j;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lo1/j;->VALUE_NOT_SET:Lo1/j;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    filled-new-array/range {v0 .. v7}, [Lo1/j;

    move-result-object v0

    sput-object v0, Lo1/j;->$VALUES:[Lo1/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo1/j;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo1/j;
    .locals 1

    const-class v0, Lo1/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo1/j;

    return-object p0
.end method

.method public static values()[Lo1/j;
    .locals 1

    sget-object v0, Lo1/j;->$VALUES:[Lo1/j;

    invoke-virtual {v0}, [Lo1/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo1/j;

    return-object v0
.end method
