.class public final enum LK3/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LK3/b;

.field public static final enum BEGIN_ARRAY:LK3/b;

.field public static final enum BEGIN_OBJECT:LK3/b;

.field public static final enum BOOLEAN:LK3/b;

.field public static final enum END_ARRAY:LK3/b;

.field public static final enum END_DOCUMENT:LK3/b;

.field public static final enum END_OBJECT:LK3/b;

.field public static final enum NAME:LK3/b;

.field public static final enum NULL:LK3/b;

.field public static final enum NUMBER:LK3/b;

.field public static final enum STRING:LK3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, LK3/b;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK3/b;->BEGIN_ARRAY:LK3/b;

    new-instance v1, LK3/b;

    const-string v2, "END_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LK3/b;->END_ARRAY:LK3/b;

    new-instance v2, LK3/b;

    const-string v3, "BEGIN_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LK3/b;->BEGIN_OBJECT:LK3/b;

    new-instance v3, LK3/b;

    const-string v4, "END_OBJECT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LK3/b;->END_OBJECT:LK3/b;

    new-instance v4, LK3/b;

    const-string v5, "NAME"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LK3/b;->NAME:LK3/b;

    new-instance v5, LK3/b;

    const-string v6, "STRING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LK3/b;->STRING:LK3/b;

    new-instance v6, LK3/b;

    const-string v7, "NUMBER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, LK3/b;->NUMBER:LK3/b;

    new-instance v7, LK3/b;

    const-string v8, "BOOLEAN"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, LK3/b;->BOOLEAN:LK3/b;

    new-instance v8, LK3/b;

    const-string v9, "NULL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, LK3/b;->NULL:LK3/b;

    new-instance v9, LK3/b;

    const-string v10, "END_DOCUMENT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, LK3/b;->END_DOCUMENT:LK3/b;

    filled-new-array/range {v0 .. v9}, [LK3/b;

    move-result-object v0

    sput-object v0, LK3/b;->$VALUES:[LK3/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LK3/b;
    .locals 1

    const-class v0, LK3/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LK3/b;

    return-object p0
.end method

.method public static values()[LK3/b;
    .locals 1

    sget-object v0, LK3/b;->$VALUES:[LK3/b;

    invoke-virtual {v0}, [LK3/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK3/b;

    return-object v0
.end method
