.class public final enum Lic/N;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lic/N;

.field public static final enum BOOLEAN:Lic/N;

.field public static final enum BYTE_STRING:Lic/N;

.field public static final enum DOUBLE:Lic/N;

.field public static final enum ENUM:Lic/N;

.field public static final enum FLOAT:Lic/N;

.field public static final enum INT:Lic/N;

.field public static final enum LONG:Lic/N;

.field public static final enum MESSAGE:Lic/N;

.field public static final enum STRING:Lic/N;


# instance fields
.field private final defaultDefault:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lic/N;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lic/N;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lic/N;->INT:Lic/N;

    new-instance v1, Lic/N;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lic/N;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Lic/N;->LONG:Lic/N;

    new-instance v2, Lic/N;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "FLOAT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lic/N;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Lic/N;->FLOAT:Lic/N;

    new-instance v3, Lic/N;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "DOUBLE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lic/N;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lic/N;->DOUBLE:Lic/N;

    new-instance v4, Lic/N;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "BOOLEAN"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lic/N;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Lic/N;->BOOLEAN:Lic/N;

    new-instance v5, Lic/N;

    const-string v6, ""

    const-string v7, "STRING"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lic/N;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v5, Lic/N;->STRING:Lic/N;

    new-instance v6, Lic/N;

    sget-object v7, Lic/e;->a:Lic/w;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lic/N;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Lic/N;->BYTE_STRING:Lic/N;

    new-instance v7, Lic/N;

    const-string v8, "ENUM"

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lic/N;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v7, Lic/N;->ENUM:Lic/N;

    new-instance v8, Lic/N;

    const-string v9, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lic/N;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Lic/N;->MESSAGE:Lic/N;

    filled-new-array/range {v0 .. v8}, [Lic/N;

    move-result-object v0

    sput-object v0, Lic/N;->$VALUES:[Lic/N;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lic/N;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lic/N;
    .locals 1

    const-class v0, Lic/N;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lic/N;

    return-object p0
.end method

.method public static values()[Lic/N;
    .locals 1

    sget-object v0, Lic/N;->$VALUES:[Lic/N;

    invoke-virtual {v0}, [Lic/N;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lic/N;

    return-object v0
.end method
